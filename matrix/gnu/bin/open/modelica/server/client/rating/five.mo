package breadnews "Description"

   Real content = 5;
   Real content_length = 5;
   String content_type = "text/plain";
   String created = "2022-05-15T15:30";
   String updated = "2022-05-15T15:30";
   String id = "1234567890";
   String title = "Sample Bread News Article";
   String author = "John Doe";
   String source_url = "https://example.com/breadnews/article/123";
   String summary = "Delicious bread recipe and tips for a healthy and nutritious";
   String category = "Healthy Food";
   String language = "en";
   String publication_date = "2022-05-15";
   
   function create
     Real link = "http://example.com";
     String link_title = "Read More";
     String link_description = "Learn more about the bread news article";
   
   end create;

   function update
    Real link = "http://example.com/updated";
   end update;

   function delete
     String message = "Article deleted successfully";
   end delete;


   function get_content
    String response = "Content: " + Real.toString(content) + "\n";
    end get_content;
   

end breadnews;