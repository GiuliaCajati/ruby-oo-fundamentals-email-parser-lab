class EmailAddressParser
    attr_reader :emails # initializer 
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      emails.split(/, | /).uniq # |  remove , // new line
    end
  end

email_addresses = "john@doe.com, person@somewhere.org"
new_emails = EmailAddressParser.new(email_addresses)

puts new_emails.parse
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
