<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests\ProductRequest;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ProductCollection;
use App\Exceptions\ProductNotBelongsToUser;
use Symfony\Component\HttpFoundation\Response;
use Auth;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    //First we authenticate user before post data.
    public function __construct()
    {
        $this->middleware('auth:api')->except('index','show');
    }

    public function index()
    {
        // return Product::all();
        // return new ProductCollection(Product::all());
        return ProductCollection::collection(Product::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        // return "Yes Authenticated User.Now Post Data";
        // return $request->all();

        $product = new Product;
        $product->name= $request->name;
        $product->detail= $request->description;
        $product->price= $request->price;
        $product->stock= $request->stock;
        $product->discount= $request->discount;
        $product->user_id= $request->user;
        $product->save();
        return response([
                'data' => new ProductResource($product)
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return new ProductResource($product);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $this->productUser($product);
        if($request->description){
        $request['detail'] =$request->description; //in our model no description field is available
        unset($request['description']);
                }
        $product->update($request->all());
        return response([
            'data' => new ProductResource($product)
    ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return response(null,Response::HTTP_NO_CONTENT);
    }

    public function productUser($product)
    {
        if (Auth::id() !== $product->user_id) {
            throw new ProductNotBelongsToUser;
            
        }
    }
}
