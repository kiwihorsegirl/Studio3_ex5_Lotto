void setup()
{
  
  // array to put each lotto line into
  String[] linesFromFileArray = loadStrings("lotto.csv");
  
  // the split values go in this array
  String[] numbersArray = new String[5];
  
  // array to store lotto line objects
  //LottoLine[] lottoLinesArray = new LottoLine[5];
  ArrayList<LottoLine> lottoLinesArray = new ArrayList<LottoLine>();
  
  // array to store powerball line objects
  //PowerballLine[] powerballLinesArray = new PowerballLine[6];
  ArrayList<PowerballLine> powerballLinesArray = new ArrayList<PowerballLine>();
  
  // load the lotto lines from a csv into an array as strings. 
  
  // for each line in the file
  for (int i = 0; i < linesFromFileArray.length; i++) {
    
    //split the values on the line and put the values into an array 
    numbersArray = linesFromFileArray[i].split(",");
    
    
      // if it is a lotto line
      if (numbersArray.length == 6) {
        
        // create a new lotto line object
        LottoLine lLine = new LottoLine(
        Integer.parseInt(numbersArray[0]), 
        Integer.parseInt(numbersArray[1]), 
        Integer.parseInt(numbersArray[2]), 
        Integer.parseInt(numbersArray[3]), 
        Integer.parseInt(numbersArray[4]), 
        Integer.parseInt(numbersArray[5])); 
        
        // add the lotto line to the array of lotto lines
        //lottoLinesArray[i] = lLine;
        lottoLinesArray.add(lLine);
        
        
      }
      
      
      // if it is a powerball line
      else if (numbersArray.length == 7) {
        
      //create a new powerball object 
      PowerballLine pbLine = new PowerballLine(
      Integer.parseInt(numbersArray[0]), 
      Integer.parseInt(numbersArray[1]), 
      Integer.parseInt(numbersArray[2]), 
      Integer.parseInt(numbersArray[3]), 
      Integer.parseInt(numbersArray[4]), 
      Integer.parseInt(numbersArray[5]),
      Integer.parseInt(numbersArray[6])); 
      
      // add the powerball to the array of powerball lines
      //powerballLinesArray[i] = pbLine;
      powerballLinesArray.add(pbLine);
      }
      
      
      
      
      //if the length of the line is not 6 or 7
      //if (numbersArray.length != 6 || numbersArray.length != 7)
      else {
       //error
       System.out.println("There is a line that is not for powerball or lotto. The amount of numbers is "
       + numbersArray.length); 
      }
      
      
      
  }
  
    // loop through the arrays of powerball and lotto lines and display them.
    for (LottoLine l : lottoLinesArray)
    {
      println(l.toString());
    }
    
    for (PowerballLine p : powerballLinesArray)
    {
      println(p.toString());
    }
}

void draw()
{
  
}
