

class Author

    attr_accessor :name

    def initialize(name)

        @name = name
        @posts = []

    end 

    def posts

        Post.all.select do |post| #call & iterate through class level method to find posts
            post.author == self  #you must have a reader/writer method in Post class in order to find posts by author
        end 
    end 

    def add_post(post)

        @posts << post
        post.author = self

    end 

    def add_post_by_title(title)

        t = Post.new(title) #create a title variable to hold new instance, create new instance calling on ruby primitative
        #pass title as well
        self.add_post(t)

    end 

    def self.post_count

        Post.all.size

    end 

end 