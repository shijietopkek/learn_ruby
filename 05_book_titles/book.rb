class Book
# write your code here
    attr_accessor :title

    def title
        special = ['a','an','the','and','of','in']

        titles = @title.split(' ')
        (titles.length).times do |i|
            titles[i] = titles[i].downcase
            if titles[i]=='i'
                titles[i] = titles[i].upcase
            elsif (special.include? titles[i])
                next
            else
                titles[i] = titles[i].capitalize
            end
        end
        titles[0] = titles[0].capitalize
        titles.join(' ')
    end

        
end
