def validate_email(email)
    pattern = /\A[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}\z/
    
    
    if email =~ pattern
        return true
    else
        return false
    end
end


puts validate_email("naren15@gmail.com")  
puts validate_email("invalid-email")       
