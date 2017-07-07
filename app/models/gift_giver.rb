# takes in a string of people separated by a comma
def sort_and_pair(list_of_people)
    # transform that string into an array of individual people
    array_of_people = list_of_people.split(",")
    # ["me", "you", "them", "us", "somebody else", "shakira"]
    # randomly sort them into pairs
    current_pair = []
    groups = []
    
    while array_of_people.length > 0
        random_person = array_of_people.sample
        current_pair.push(random_person)
        
        array_of_people.delete_if do |person| 
            person == random_person 
        end
        
        if current_pair.length > 1
           groups.push(current_pair) 
           current_pair = []
        end
    end
    
    groups
    # [["me", "you"],["them", "shakira"],["somebody else", "her"],[]]
    # organize those pairs into a single data structure    
end