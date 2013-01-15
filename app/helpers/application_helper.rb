module ApplicationHelper

  def get_first_n_symbols(string, amount)
    if string.size > amount
      string = string[0..amount]+'...'
    end
    string
  end

end
