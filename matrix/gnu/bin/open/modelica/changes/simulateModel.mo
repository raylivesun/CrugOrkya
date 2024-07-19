package firmware "Description"

  parameter String version = "Description";
  parameter String author = "Author";
  parameter String license = "License";
  parameter String repository = "Repository";
  parameter String documentation = "Documentation";
  parameter String keywords = "Keywords";

  import Modelica.version;
  import Modelica.author;
  import Modelica.license;
  import Modelica.repository;
  import Modelica.documentation;
  import Modelica.keywords;

  model Firmware
   "Description"
    parameter Integer version = 1;
    parameter String author = "Author";
    parameter String license = "License";
    parameter String repository = "Repository";
    parameter String documentation = "Documentation";
    parameter String keywords = "Keywords";
    extends Modelica.Icons.Example;

    // Model code...
  end Firmware;

end firmware;