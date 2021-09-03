<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Http;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('marcar');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('crear');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $client  = new Client();
        $url = "http://localhost:15466/api/user/login";                

       /*$response =$client->$request("POST",
            $url,[            
            'Nombre'=>$request->input['nombre'],
            'Usuario'=>$request->input['usuario'],
            'Pass'=> $request->input['pass'],

            'headers' => [
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
            ]        
        ]);*/

        $response =Http::post($url, [
            
            'Nombre'=>$request->input('nombre'),
            'Usuario'=>$request->input('usuario'),
            'Pass'=>$request->input('pass')
                
        ]);


       /* $response = Http::post($url, [
            
            'Nombre'=>'abc',
            'Usuario'=>'abc',
            'Pass'=> '123'
                
        ]);*/
        
        return view('marcar');

        /*return response()->view('marcar',$data,200)
        ->header('Content-Type', $type);*/

        //return response::json(['marcar'=>$value],200);
        //return redirect('/login');
    }
    public function crear(Request $request)
    {
        //
        $client  = new Client();
        $url = "http://localhost:15466/api/user/crear";                

       /*$response =$client->$request("POST",
            $url,[            
            'Nombre'=>$request->input['nombre'],
            'Usuario'=>$request->input['usuario'],
            'Pass'=> $request->input['pass'],

            'headers' => [
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
            ]        
        ]);*/

        $response =Http::post($url, [
            
            'Nombre'=>$request->input('nombre'),
            'Usuario'=>$request->input('usuario'),
            'Pass'=>$request->input('pass')
                
        ]);
        

       /* $response = Http::post($url, [
            
            'Nombre'=>'abc',
            'Usuario'=>'abc',
            'Pass'=> '123'
                
        ]);*/
        
        return view('crear');

        /*return response()->view('marcar',$data,200)
        ->header('Content-Type', $type);*/

        //return response::json(['marcar'=>$value],200);
        //return redirect('/login');
    }
    public function registro(Request $request)
    {        
        $date = date('m/d/Y h:i:s a', time());

        $client  = new Client();
        $url = "http://localhost:15466/api/operacion";                

        $response =Http::post($url, [
            
            'tipo'=>$request->input('tipo'),
            'fechayhora'=>$request->input('hora'),
            'usuarioid'=>$request->input('id')
            
            /*'tipo'=>1,
            'fechayhora'=>'2021-09-02',
            'usuarioid'=>1*/            
        ]);

        return view('marcar');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
