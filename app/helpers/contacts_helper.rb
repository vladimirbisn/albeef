module ContactsHelper
  def split_emails(str)
    str.gsub!(/\s+/, "").split(",")
  end
end
