<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

use App\Models\Barber;
use App\Models\User;
use App\Models\BarberPhoto;
use App\Models\BarberService;
use App\Models\BarberTestimonial;
use App\Models\UserAppointment;
use App\Models\UserFavorite;

use App\Models\BarberAvailability;

class BarberController extends Controller
{   
    private $loggedUser;
    public function __construct()
    {
        $this->middleware('auth:api');
        $this->loggedUser = auth()->user();  //info user
    }

    /*
     public function createRandom() {
        $array = ['error'=>''];

        for($q=0; $q<15; $q++) {
                $names = ['Boniek', 'Paulo', 'Pedro', 'Amanda', 'Leticia', 'Gabriel', 'Gabriela', 'Thais', 'Luiz', 'Diogo', 'José', 'Jeremias', 'Francisco', 'Dirce', 'Marcelo' ];
                $lastnames = ['Santos', 'Silva', 'Santos', 'Silva', 'Alvaro', 'Sousa', 'Diniz', 'Josefa', 'Luiz', 'Diogo', 'Limoeiro', 'Santos', 'Limiro', 'Nazare', 'Mimoza' ];
                $servicos = ['Corte', 'Pintura', 'Aparação', 'Unha', 'Progressiva', 'Limpeza de Pele', 'Corte Feminino'];
                $servicos2 = ['Cabelo', 'Unha', 'Pernas', 'Pernas', 'Progressiva', 'Limpeza de Pele', 'Corte Feminino'];
                $depos = [
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.',
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.',
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.',
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.',
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'
                ];

            $newBarber = new Barber();
            $newBarber->name = $names[rand(0, count($names)-1)].' '.$lastnames[rand(0, count($lastnames)-1)];
            $newBarber->avatar = rand(1, 4).'.png';
            $newBarber->stars = rand(2, 4).'.'.rand(0, 9);
            $newBarber->latitude = '-23.5'.rand(0, 9).'30907';
            $newBarber->longitude = '-46.6'.rand(0,9).'82759';
            $newBarber->save();

            $ns = rand(3, 6);

            for($w=0;$w<4;$w++) {
                $newBarberPhoto = new BarberPhoto();
                $newBarberPhoto->id_barber = $newBarber->id;
                $newBarberPhoto->url = rand(1, 5).'.png';
                $newBarberPhoto->save();
            }

            for($w=0;$w<$ns;$w++) {
                $newBarberService = new BarberService();
                $newBarberService->id_barber = $newBarber->id;
                $newBarberService->name = $servicos[rand(0, count($servicos)-1)].' de '.$servicos2[rand(0, count($servicos2)-1)];
                $newBarberService->price = rand(1, 99).'.'.rand(0, 100);
                $newBarberService->save();
            }

            for($w=0;$w<3;$w++) {
                $newBarberTestimonial = new BarberTestimonial();
                $newBarberTestimonial->id_barber = $newBarber->id;
                $newBarberTestimonial->name = $names[rand(0, count($names)-1)];
                $newBarberTestimonial->rate = rand(2, 4).'.'.rand(0, 9);
                $newBarberTestimonial->body = $depos[rand(0, count($depos)-1)];
                $newBarberTestimonial->save();
            }

            for($e=0;$e<4;$e++){
                $rAdd = rand(7, 10);
                $hours = [];
                for($r=0;$r<8;$r++) {
                    $time = $r + $rAdd;
                    if($time < 10) {
                        $time = '0'.$time;
                    }
                    $hours[] = $time.':00';
                }

                $newBarberAvail = new BarberAvailability();
                $newBarberAvail->id_barber = $newBarber->id;
                $newBarberAvail->weekday = $e;
                $newBarberAvail->hours = implode(',', $hours);
                $newBarberAvail->save();
            }
        }
        return $array;
    }
    */

    private function searchGeo($address){

        $key = env('MAPS_KEY', null);

        $address = urlencode($address); //caracteres não-alfanuméricos

        $url = 'http://api.positionstack.com/v1/forward?access_key='.$key.'&query='.$address;

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $response = curl_exec($ch);
        curl_close($ch);

        return json_decode($response, true);

    }

    public function list(Request $request){
        $array = ['error' => ''];

        $lat = '';
        $long = '';

        $offset = $request->input('offset');

        if(!$offset){
            $offset = 0;
        }

        $address = $request->input('address');

        if(!empty($address)){
            $res = $this->searchGeo($address);
            if(count($res['data']['results']) > 0){
                $lat = $res['data']['results'][0]['latitude'];
                $long = $res['data']['results'][0]['longitude'];
            }
        }else{
            $lat = '-23.5630807';
            $long = '-46.6682795';
            $address = 'São Paulo';
        }

        $barbers = Barber::select(Barber::raw('*, SQRT(POW(69.1 * (latitude - '.floatval($lat).'), 2) +
        POW(69.1 * ('.floatval($long).' - longitude) * COS(latitude / 57.3), 2)) AS distance'))->havingRaw('distance < ?', [15])->orderBy('distance', 'ASC')->offset($offset)->limit(10)->get();

        foreach($barbers as $key => $item){

            $barbers[$key]['avatar'] = url('media/avatar'.$barbers[$key]['avatar']);
        }
        
        $array['data'] = $barbers;
        $array['loc'] = 'São Paulo';

        return $array;
    }

    //acessando dados de 1 barbeiro
    public function one($id){
        $array = ['error' => ''];
        
        $barber = Barber::find($id);

        if($barber){
            $barber['avatar'] = url('media/avatars/'.$barber['avatar']);

            //outras info
            $barber['favorited'] = false;
            $barber['photos'] = [];
            $barber['services'] = [];
            $barber['testimonials'] = [];
            $barber['available'] = [];

            //favorito apenas verificar

            $cFavorite = UserFavorite::where('id_user', $this->loggedUser->id)->where('id_barber', $barber->id)->count();

            if($cFavorite > 0){
                $barber['favorited'] = true;
            }

            //fotos barber
            $barber['photos'] = BarberPhoto::select(['id', 'url'])->where('id_barber', $barber->id)->get();
            foreach($barber['photos'] as $key => $item){
                $barber['photos'][$key]['url'] = url('media/uploads/'.$barber['photos'][$key]['url']);
            }

            //servicos
            $barber['services'] = BarberService::where('id_barber', $barber->id)->get();

            //testimonials
            $barber['testimonials'] = BarberTestimonial::where('id_barber', $barber->id)->get();

            //available
            $availability = [];
            
            //pegando disponibilidade
                $avails = BarberAvailability::where('id_barber', $barber->id)->get();
                $availsWeekDays = [];

                foreach($avails as $item){
                    $availsWeekDays[$item['weekday']] = explode(',', $item['hours']);
                }

            //pegar os agendamentos 20 dias de cada barber
                $appointments = [];
                $appQuery = UserAppointment::where('id_barber', $barber->id)->whereBetween('ap_datetime', [
                    date('Y-m-d').'00:00:00',
                    date('Y-m-d', strtotime('+20 days')).'23:59:59'
                ]);

                foreach($appQuery as $item){
                    $appointments[] = $item['ap_datetime']; //horarios dos agendamentos
                }

                // gerar disponibilidade real
                for($i = 0; $i < 20; $i++){
                    $timeItem = strtotime('+'.$i.' days'); //pegando 20 dias
                    $weekDay = date('w', $timeItem); //pegando dia da semana em 20 dias

                    //dias especificos para disponibilidade
                    if(in_array($weekDay, array_keys($availsWeekDays))){

                        //horas disponiveis
                        $hours = [];
                        $dayItem = date('Y-m-d', $timeItem); //dia atual

                        foreach($availsWeekDays[$weekDay] as $hourItem){
                            $dayFormated = $dayItem.' '.$hourItem.':00';
                            if(!in_array($dayFormated, $appointments)){
                                //add horas que eu tenho disponivel
                                $hours[] = $hourItem;
                            }
                        }

                        if(count($hours) > 0){
                            $availability[] = [
                                'data' => $dayItem,
                                'hours' => $hours
                            ];
                        }
                    }
                }


            $barber['available'] = $availability;
            $array['data'] = $barber;

        }else{
            $array['error'] = "Barbeiro não existe!";
            return $array;
        }

        return $array;

    }

    //salvar agendamento

    public function setAppointment($id, Request $request){
        //service year month day hour
        $array = ['error' => ''];

        $service = $request->input('service');
        $year = intval($request->input('year'));
        $month = intval($request->input('month'));
        $day = intval($request->input('day'));
        $hour = intval($request->input('hour'));

        $month = ($month < 10) ? '0'.$month : $month;
        $day = ($day < 10) ? '0'.$day : $day;
        $hour = ($hour < 10) ? '0'.$hour : $hour;

        //servico existe e barbeiro tbm?
        $barberService = BarberService::where('id', $service)->where('id_barber', $id)->first();

        if($barberService){

            // data é real?
            $apDate = $year.'-'.$month.'-'.$day.' '.$hour.':00:00';
            if(strtotime($apDate) > 0) {
                // barbeiro ja possui agendamento nesse dia/hora
                $apps = UserAppointment::select()->where('id_barber', $id)->where('ap_datetime', $apDate)->count();
                if($apps === 0){
                    // atende nessa data?
                    $weekDay = date('w', strtotime($apDate)); //dia da semana passada pelo usuario
                    $availability = BarberAvailability::select()->where('id_barber', $id)->where('weekday', $weekDay)->first();
                    if($availability){
                        //atende nessa hora?
                        $hours = explode(',', $availability['hours']);
                        if(in_array($hour.':00', $hours)){
                            // fazer agendamento
                            $newApp = new UserAppointment();
                            $newApp->id_user = $this->loggedUser->id;
                            $newApp->id_barber = $id;
                            $newApp->id_service = $service;
                            $newApp->ap_datetime = $apDate;
                            $newApp->save();
                        }else{
                            $array['error'] = 'Barberiro não atende neste nesta hora';
                            return $array;
                        }
                    }else{
                        $array['error'] = 'Barberiro não atende neste dia/hora';
                        return $array;
                    }

                    
                }else{
                    $array['error'] = 'Barberiro já possui agendamento neste dia/hora';
                    return $array;
                }
               

            }else{
                $array['error'] = 'Data inválida!';
                return $array;
            }
            

        }else{
            $array['error'] = 'Serviço não existe!';
            return $array;
        }

        

        return $array;
    }

    public function search(Request $request){
        $array = ['error' => '', 'list' => []];

        $q = $request->input('q');
        
        if($q){

            $barbers = Barber::select()->where('name', 'LIKE', '%'.$q.'%')->get();

            
            foreach($barbers as $key => $item){
                $barbers[$key]['avatar'] = url('media/avatars/'.$barbers[$key]['avatar']);
            }

            $array['list'] = $barbers;
            

        }else{
            $array['error'] = 'Digite algo para buscar!';
            return $array;
        }

        return $array;

    }
}
