<?php

namespace App\Exceptions;

use Symfony\Component\HttpFoundation\Response;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

trait ExceptionTrait{

    public function apiException($request,$exception)
    {
        if ($this->isModel($exception)) {
            return response()->json([
                'error' => 'Product Model Not Found'
            ],Response::HTTP_NOT_FOUND);
        }
    
        if ($this->isHttp($exception)) {

            return response()->json([
                'error' => 'Incorrect Route'
            ],Response::HTTP_NOT_FOUND);
        }

         //if exception is other ModelNotFound or NotFoundHttp
    return parent::render($request, $exception);
    }

    public function isModel($exception)
    {
        
        return $exception instanceof ModelNotFoundException;
    }

    public function isHttp($exception)
    {
        return $exception instanceof NotFoundHttpException;
    }
   
}