<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\UserFavorite;
use App\Models\Barber;
use App\Models\UserAppointment;
use App\Models\BarberService;
use App\Models\User;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;


class UserController extends Controller
{
    private $loggedUser;
    public function __construct()
    {
        $this->middleware('auth:api');
        $this->loggedUser = auth()->user();  //info user
    }

    //info do user logado
    public function read(){
        $array = ['error' => ''];

        $info = $this->loggedUser;
        $info['avatar'] = url('media/avatars/'.$info['avatar']);

        $array['user'] = $info;

        return $array;
    }

    public function toggleFavorites(Request $request){
        $array = ['error' => ''];

        $barberId = $request->input('barber');
        $barber = Barber::find($barberId);

        if($barber){
            $hasFav = UserFavorite::select()->where('id_user', $this->loggedUser->id)->where('id_barber', $barberId)->first();
            if($hasFav){
                //remove fav
                $hasFav->delete();
                $array['have'] = false;
            }else{
                //add
                $newFav = New UserFavorite();
                $newFav->id_user = $this->loggedUser->id;
                $newFav->id_barber = $barberId;
                $newFav->save();
                $array['have'] = true;
            }
        }else{
            $array['error'] = "Precisa enviar um barbeiro!";
            return $array;
        }

        return $array;

    }

    public function favorites(){
        $array = ['error' => '', 'list' => []];

        $favs = UserFavorite::select()->where('id_user', $this->loggedUser->id)->get();

        if($favs){
            foreach($favs as $item){
                $barber = Barber::find($item['id_barber']);
                $barber['avatar'] = url('media/avatars/'.$barber['avatar']);
                $array['list'][] = $barber;
            }
        }else{
            $array['error'] = "Você não tem favoritos!";
            return $array;
        }

        return $array;

    }

    public function getAppointments(){
        $array = ['error' => '', 'list' => []];

        $apps = UserAppointment::select()->where('id_user', $this->loggedUser->id)->orderBY('ap_datetime', 'DESC')->get();

        if($apps){

            foreach($apps as $app){
                //barbeiro
                $barber = Barber::find($app['id_barber']);
                $barber['avatar'] = url('media/avatars/'.$barber['avatar']);

                //servicos
                $service = BarberService::find($app['id_service']);
                $array['list'][] = [
                    'id' => $app['id'],
                    'data' => $app['ap_datetime'],
                    'service' => $service,
                    'barber' => $barber
                ];
            }   

        }else{
            $array['error'] = "Você não tem agendamentos!";
            return $array;
        }

        return $array;

    }

    public function update(Request $request){
        $array = ['error' => ''];

        $rules = [
            'name' => 'min:2',
            'email' => 'email|unique:users',
            'password' => 'same:password_confirm',
            'password_confirm' => 'same:password'
        ];

        $validator = Validator::make($request->all(), $rules);

        if($validator->fails()){
            $array['error'] = $validator->messages();
        }

        $name = $request->input('name');
        $email = $request->input('email');
        $password = $request->input('password');
        $password_confirm = $request->input('password_confirm');

        $user = User::find($this->loggedUser->id);

        if($name){
            $user->name = $name;
        }

        if($email){
            $user->email = $email;
        }

        if($password){
            $user->password = password_hash($password, PASSWORD_DEFAULT);
        }

        $user->save();

        return $array;

    }

    public function updateAvatar(Request $request){
        $array = ['error' => ''];

        $rules = [
            'avatar' => 'required|image|mimes:jpg,png,jpeg',
        ];

        $validator = Validator::make($request->all(), $rules);
        
        if($validator->fails()){
            $array['error'] = $validator->messages();
            return $array;
        }

        $avatar = $request->file('avatar');

        $dest = public_path('/media/avatars');
        $avatarName = md5(time().rand(0,9999)).'.jpg';

        $img = Image::make($avatar->getRealPath());
        $img->fit(300,300)->save($dest.'/'.$avatarName);

        $user = User::find($this->loggedUser->id);

        if ($user["avatar"] !== $avatarName) {
            File::delete(public_path("/media/avatars/".$user["avatar"]));
        }

        $user->avatar = $avatarName;

        $user->save();

        return $array;

    }
}
