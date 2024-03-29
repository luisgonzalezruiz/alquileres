<?php

namespace App\Providers;

use Carbon\Carbon;
use Laravel\Passport\Passport;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //Passport::routes();
        Passport::routes(function($router){
            $router->forAccessTokens();
        });
        //Passport::tokensExpireIn(Carbon::now()->addDays(1));
        //Passport::refreshTokensExpireIn(Carbon::now()->addDays(10));
    }
}
