class ChargesController < ApplicationController
    def new
        @item = Item.find(params[:id])
        Stripe.api_key = ENV["API_SECRET_KEY"]
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
            name: @item.name,
            description: "this is a description",
            amount: (@item.cost * 100).to_i,
            currency: 'aud',
            quantity: 1,
            }],
            success_url: 'http://localhost:3000/orders/complete',
            cancel_url: "http://localhost:3000/orders/cancel"
            )
    end
end
