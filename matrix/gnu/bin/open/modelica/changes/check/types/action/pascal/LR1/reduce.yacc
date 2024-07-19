/*
the following local variables
*/
%{

   typedef struct {
     int id;
     char* name;
     int age;
     char* city;
     char* country;
     char* email;
     char* phone;
     char* website;
     char* bio;
     char* skills;
     char* experience;
     char* education;
     char* projects;
     char* recommendations;
     char* socialMediaProfiles;
     char* interests;
     char* hobbies;
     char* languages;
     char* certifications;
     char* references;
     char* coverLetter;
     char* resume;
     char* books;
   }

   typedef struct {
     int id;
     char* title;
     char* company;
     char* startDate;
     char* endDate;
     char* description;
   }

   typedef struct {
     int id;
     char* degree;
     char* institution;
     char* startDate;
     char* endDate;
   }
   typedef struct {
     int id;
     char* name;
     char* startDate;
     char* endDate;
   }
   typedef struct {
     int id;
     char* name;
     char* description;
   }
   typedef struct {
     int id;
     char* platform;
     char* username;
     char* startDate;
     char* endDate;
   }
   typedef struct {
     int id;
     char* name;
     char* description;
   }
   typedef struct {
     int id;
     char* name;
     char* language;
     char* proficiency;
   }
   typedef struct {
     int id;
     char* name;
     char* certification;
     char* startDate;
     char* endDate;
   }
   typedef struct {
     int id;
     char* name;
     char* reference;
   }
   typedef struct {
     int id;
     char* name;
     char* coverLetter;
     char* resume;
   }
   typedef struct {
     int id;
     char* name;
     char* resume;
   }
   typedef struct {
     int id;
     char* name;
     char* description;
   }
   typedef struct {
     int id;
     char* name;
     char* website;
     char* startDate;
     char* endDate;
   }


%}