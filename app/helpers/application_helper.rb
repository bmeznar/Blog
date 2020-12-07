module ApplicationHelper
  def display_navbar_options
    capture do
      if user_signed_in?
        concat link_to "Uredi profil", edit_user_registration_path, class: 'nav-link'
        concat " "
        concat link_to "Odjava", destroy_user_session_path, method: :delete, class: 'nav-link'
      else
        concat link_to "Prijava", new_user_session_path, class: 'nav-link'
        concat " "
        concat link_to "Registracija", new_user_registration_path, class: 'nav-link'
      end
    end
  end
end
