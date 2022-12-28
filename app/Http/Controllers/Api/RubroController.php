<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Rubro;
use Illuminate\Http\Request;

class RubroController extends Controller
{

    public function index()
    {
        $rubros = Rubro::all();
        return response()->json([
            'data'=>$rubros,
            'mensaje'=>'Successfully Retrieved categorias'
        ],200);
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        $rubro = Rubro::findOrFail($id);
        return response()->json([
            'data'=> $rubro,
            'mensaje'=>'Successfully Retrieved by Id'
        ],200);
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy(Rubro $rubro)
    {
        //
    }

}
