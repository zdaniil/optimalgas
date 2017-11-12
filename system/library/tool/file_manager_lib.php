<?php 
// elFinder autoload
require 'file_manager/autoload.php';

class File_manager_lib 
{
  public function __construct($opts) 
  {
    $connector = new elFinderConnector(new elFinder($opts));
    $connector->run();
  }
}