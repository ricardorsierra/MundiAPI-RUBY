# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for creating a recipient
  class CreateRecipientRequest < BaseModel
    # Recipient name
    # @return [String]
    attr_accessor :name

    # Recipient email
    # @return [String]
    attr_accessor :email

    # Recipient description
    # @return [String]
    attr_accessor :description

    # Recipient document number
    # @return [String]
    attr_accessor :document

    # Recipient type
    # @return [String]
    attr_accessor :type

    # Bank account
    # @return [CreateBankAccountRequest]
    attr_accessor :default_bank_account

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['description'] = 'description'
      @_hash['document'] = 'document'
      @_hash['type'] = 'type'
      @_hash['default_bank_account'] = 'default_bank_account'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    def initialize(name = nil,
                   email = nil,
                   description = nil,
                   document = nil,
                   type = nil,
                   default_bank_account = nil,
                   metadata = nil)
      @name = name
      @email = email
      @description = description
      @document = document
      @type = type
      @default_bank_account = default_bank_account
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      email = hash['email']
      description = hash['description']
      document = hash['document']
      type = hash['type']
      default_bank_account = CreateBankAccountRequest.from_hash(hash['default_bank_account']) if
        hash['default_bank_account']
      metadata = hash['metadata']

      # Create object from extracted values.
      CreateRecipientRequest.new(name,
                                 email,
                                 description,
                                 document,
                                 type,
                                 default_bank_account,
                                 metadata)
    end
  end
end