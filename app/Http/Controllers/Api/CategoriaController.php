<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

use App\Models\Categoria;
use Illuminate\Http\Request;

class CategoriaController extends Controller
{

    public function __construct()
    {
        // de esta manera indicamos que si o si necesita autenticacion
        $this->middleware('auth:api');
    }


    public function index()
    {
        //$this->authorize('');
        try{
            $categorias = Categoria::paginate(5);
            //return response()->json($categorias);

             return response()->json([
                 'data'=>$categorias,
                 'mensaje'=>'Successfully Retrieved categorias'
             ],200);

        }catch (\Exception $exp) {
            //abort(404);
        }
    }


    public function create()
    {
        //
    }


    public function store(Request $request)
    {

        $categoria = new Categoria();
        $categoria->cat_descripcion = $request->cat_descripcion;
        $categoria->save();

        return response()->json([
            'data'=>$categoria,
            'mensaje'=>'Successfully stored categorias'
        ],200);

    }


    public function show(Categoria $categoria)
    {
        //
    }


    public function edit(Categoria $categoria)
    {
        //
    }


    public function update(Request $request, $id)
    {
        $categoria = Categoria::all()->find($id);

        $categoria = new Categoria();
        $categoria->cat_descripcion = $request->cat_descripcion;
        $categoria->save();

        return response()->json([
            'data'=> $categoria,
            'mensaje'=>'Successfully Updated'
        ],200);

    }


    public function destroy($id)
    {
        $categoria = Categoria::all()->find($id);
        $categoria->delete();

        return response()->json([
            'data'=> $id,
            'mensaje'=>'Successfully Deleted'
        ],200);
    }

}
