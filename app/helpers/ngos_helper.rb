module NgosHelper
  def add_users(users)
    set_select(users)
  end
  def set_select(users)
    op = ''
    users.each do |u|
      op += "<option value='#{u.id}'>#{u.email}</option>"
    end
    "<select multiple name='ngo[users][]' >
      #{op}
    </select> "
  end
end
