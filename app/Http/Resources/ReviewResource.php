<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReviewResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        //Transform data of reviews
        return [
            'id' => $this->id,
            'customer' => $this->customer,
            'body' => $this->review,
            'rating' => $this->star
    ];
    }
}
