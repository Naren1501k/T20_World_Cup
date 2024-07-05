
import re

def validate_email(email)
    # Regular expression pattern for basic email validation
    pattern = r'^[\w\.-]+@[a-zA-Z\d\.-]+\.[a-zA-Z]{2,}$'
    
    # Using re.match to check if the email matches the pattern
    if re.match(pattern, email)
        return True
    else
        return False
    end
end

validate_email("naren15@gmail.com")

