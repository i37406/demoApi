<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        // We Show following Collection of JsonData in our index function.
        return[
            'name' => $this->name,
            'finalPrice' => round((1-($this->discount/100))*$this->price,2),
            'rating' => $this->reviews->count() > 0 ? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'No Rating Yet',
            'href' => [
                'link' => route('products.show',$this->id)
            ]
        ];
    }
}
