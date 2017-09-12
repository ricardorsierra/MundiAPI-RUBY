# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module MundiApi
  class SubscriptionsController < BaseController
    @@instance = SubscriptionsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Updates the billing date from a subscription
    # @param [String] subscription_id Required parameter: The subscription id
    # @param [UpdateSubscriptionBillingDateRequest] request Required parameter: Request for updating the subscription billing date
    # @return GetSubscriptionResponse response from the API call
    def update_subscription_billing_date(subscription_id,
                                         request)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/billing-date'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.patch _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end

    # Creates a usage
    # @param [String] subscription_id Required parameter: Subscription Id
    # @param [String] item_id Required parameter: Item id
    # @param [CreateUsageRequest] body Required parameter: Request for creating a usage
    # @return GetUsageResponse response from the API call
    def create_usage(subscription_id,
                     item_id,
                     body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/items/{item_id}/usages'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id,
        'item_id' => item_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetUsageResponse.from_hash(decoded)
    end

    # Updates a subscription item
    # @param [String] subscription_id Required parameter: Subscription Id
    # @param [String] item_id Required parameter: Item id
    # @param [UpdateSubscriptionItemRequest] body Required parameter: Request for updating a subscription item
    # @return GetSubscriptionItemResponse response from the API call
    def update_subscription_item(subscription_id,
                                 item_id,
                                 body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/items/{item_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id,
        'item_id' => item_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionItemResponse.from_hash(decoded)
    end

    # Gets all subscriptions
    # @return ListSubscriptionsResponse response from the API call
    def get_subscriptions

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ListSubscriptionsResponse.from_hash(decoded)
    end

    # Updates the credit card from a subscription
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [UpdateSubscriptionCardRequest] request Required parameter: Request for updating a card
    # @return GetSubscriptionResponse response from the API call
    def update_subscription_card(subscription_id,
                                 request)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/card'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.patch _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end

    # Creates a new subscription
    # @param [CreateSubscriptionRequest] body Required parameter: Request for creating a subscription
    # @return GetSubscriptionResponse response from the API call
    def create_subscription(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end

    # Creates a new Subscription item
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [CreateSubscriptionItemRequest] request Required parameter: Request for creating a subscription item
    # @return GetSubscriptionItemResponse response from the API call
    def create_subscription_item(subscription_id,
                                 request)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/items'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionItemResponse.from_hash(decoded)
    end

    # Creates a discount
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [CreateDiscountRequest] request Required parameter: Request for creating a discount
    # @return GetDiscountResponse response from the API call
    def create_discount(subscription_id,
                        request)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/discounts'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetDiscountResponse.from_hash(decoded)
    end

    # Gets a subscription
    # @param [String] subscription_id Required parameter: Subscription id
    # @return GetSubscriptionResponse response from the API call
    def get_subscription(subscription_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end

    # Updates the payment method from a subscription
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [UpdateSubscriptionPaymentMethodRequest] request Required parameter: Request for updating the paymentmethod from a subscription
    # @return GetSubscriptionResponse response from the API call
    def update_subscription_payment_method(subscription_id,
                                           request)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/payment-method'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.patch _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end

    # Lists all usages from a subscription item
    # @param [String] subscription_id Required parameter: The subscription id
    # @param [String] item_id Required parameter: The subscription item id
    # @return ListUsagesResponse response from the API call
    def get_usages(subscription_id,
                   item_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/items/{item_id}/usages'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id,
        'item_id' => item_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ListUsagesResponse.from_hash(decoded)
    end

    # Deletes a usage
    # @param [String] subscription_id Required parameter: The subscription id
    # @param [String] item_id Required parameter: The subscription item id
    # @param [String] usage_id Required parameter: The usage id
    # @return GetUsageResponse response from the API call
    def delete_usage(subscription_id,
                     item_id,
                     usage_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/items/{item_id}/usages/{usage_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id,
        'item_id' => item_id,
        'usage_id' => usage_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetUsageResponse.from_hash(decoded)
    end

    # Deletes a discount
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [String] discount_id Required parameter: Discount Id
    # @return GetDiscountResponse response from the API call
    def delete_discount(subscription_id,
                        discount_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/discounts/{discount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id,
        'discount_id' => discount_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetDiscountResponse.from_hash(decoded)
    end

    # Cancels a subscription
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [CreateCancelSubscriptionRequest] request Optional parameter: Request for cancelling a subscription
    # @return GetSubscriptionResponse response from the API call
    def cancel_subscription(subscription_id,
                            request = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end

    # Deletes a subscription item
    # @param [String] subscription_id Required parameter: Subscription id
    # @param [String] subscription_item_id Required parameter: Subscription item id
    # @return GetSubscriptionItemResponse response from the API call
    def delete_subscription_item(subscription_id,
                                 subscription_item_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subscriptions/{subscription_id}/items/{subscription_item_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id,
        'subscription_item_id' => subscription_item_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionItemResponse.from_hash(decoded)
    end

    # Updates the metadata from a subscription
    # @param [String] subscription_id Required parameter: The subscription id
    # @param [UpdateMetadataRequest] request Required parameter: Request for updating the subscrption metadata
    # @return GetSubscriptionResponse response from the API call
    def update_subscription_metadata(subscription_id,
                                     request)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/Subscriptions/{subscription_id}/metadata'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subscription_id' => subscription_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.patch _query_url, headers: _headers, parameters: request.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetSubscriptionResponse.from_hash(decoded)
    end
  end
end
