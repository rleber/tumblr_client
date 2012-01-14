module Tumblr
  class Client
    module Post
      
      def edit(blog_name, options={})
        post("v2/blog/#{blog_name}/post/edit", options)  
      end

      #Don't be lazy and create a nice interface
      def reblog(blog_name, options={})
        post("v2/blog/#{blog_name}/post/reblog", options)  
      end
      
      def delete(blog_name, id)
        post("v2/blog/#{blog_name}/post/delete", {:id => id})  
      end

      #TODO Decide if you want people to just pass in a filename
      def photo(blog_name, options={})
        options[:type] = "photo"
        post("v2/blog/#{blog_name}/post", options)  
      end
      
      def quote(blog_name, options={})
        options[:type] = "quote"
        post("v2/blog/#{blog_name}/post", options)
      end

      def text(blog_name, options={})
        options[:type] = "text"
        post("v2/blog/#{blog_name}/post", options)
      end

      def link(blog_name, options={})
        options[:type] = "link"
        post("v2/blog/#{blog_name}/post", options)
      end

      def chat(blog_name, options={})
        options[:type] = "chat"
        post("v2/blog/#{blog_name}/post", options)
      end

      def audio(blog_name, options={})
        options[:type] = "audio"
        post("v2/blog/#{blog_name}/post", options)
      end
      
      def video(blog_name, options={})
        options[:type] = "video"
        post("v2/blog/#{blog_name}/post", options)
      end

    end
  end
end