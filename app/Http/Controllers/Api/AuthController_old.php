<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AuthController_old extends Controller
{
    public function login(Request $request)
    {

        //return response()->json($request->username);

        $http = new \GuzzleHttp\Client;
        try {


            $response = $http->post(config('services.passport.login_endpoint'), [
                'form_params' => [
                    'grant_type' => 'password',
                    'client_id' => config('services.passport.client_id'),
                    'client_secret' => config('services.passport.client_secret'),
                    'username' => $request->username,
                    'password' => $request->password,
                ]
            ]);


            //return response()->json($request->username);



            return $response->getBody();

        } catch (\GuzzleHttp\Exception\BadResponseException $e) {

            if ($e->getCode() === 400) {
                return response()->json('Invalid Request. Please enter a username or a password.', $e->getCode());
            } else if ($e->getCode() === 401) {
                return response()->json('Your credentials are incorrect. Please try again', $e->getCode());
            }

            return response()->json('Something went wrong on the server.', $e->getCode());
        }
    }

    public function test(){
        return response()->json('Logged out successfully', 200);
    }

    public function logout()
    {
        auth()->user()->tokens->each(function ($token, $key) {
            $token->delete();
        });

        return response()->json('Logged out successfully', 200);
    }
}
