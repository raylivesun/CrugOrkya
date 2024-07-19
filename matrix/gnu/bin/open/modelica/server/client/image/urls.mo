model imageUrls "Description"
    
    Real buffer = 840;
    Real check = 600;
    Real links = 600;
    Real total = buffer + check + links;

    // Calculate the number of images per row
    Real imagesPerRow = 4;
    Real imageWidth = total / imagesPerRow;

    // Set the height of each image to maintain aspect ratio
    Real imageHeight = imageWidth * 0.6;

    // Set the image URLs
    String imageUrls = "https://example.com/image1.jpg";

end imageUrls;