# RubyHashes
# Part I
def array_2_hash emails, contacts
    if emails.length() == 0
        return contacts
    else
        i = 0
        contacts.each do |k,v|
            contacts[k] = emails[i]
            i = i+ 1
        end
    end
    return contacts
end

# Part II
def array2d_2_hash contact_info, contacts
    i = 0
    base = Hash.new
    if contact_info.length() == 0 || contact_info[0].length() == 0
        contacts.each do |k,v|
            base[k.to_sym] = {}
            i = i+ 1
        end
    else
        contacts.each do |k,v|
            base[k.to_sym] = {:email=>contact_info[i][0], :phone=>contact_info[i][1]}
            i = i+ 1
        end
        
    end
    return base
end

# Part III
def hash_2_array contacts
    arrName = []
    arrEmails= []
    arrPN = []
    i = 0
    contacts.each do |k,v|
        arrName.push(k.to_s)
        arrEmails.push(v[:email])
        arrPN.push(v[:phone])
        i = i+ 1
    end
    return [arrEmails,arrPN,arrName]
end
