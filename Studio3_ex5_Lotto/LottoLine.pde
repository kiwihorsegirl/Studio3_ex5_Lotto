// class LottoLine  will store the numbers on a line of a lotto ticket. 

class LottoLine
{
 protected int[] lottoNumbers = new int[6];

   public LottoLine(int num1, int num2, int num3, int num4, int num5, int num6) {
    
        lottoNumbers[0] = num1;
        lottoNumbers[1] = num2;
        lottoNumbers[2] = num3;
        lottoNumbers[3] = num4;
        lottoNumbers[4] = num5;
        lottoNumbers[5] = num6;
    
  }
  
  public String toString() {
    
    String displayNumbers = "";
    for (int i = 0; i < lottoNumbers.length; i++){
      displayNumbers += lottoNumbers[i] + " ";
    }
    //System.out.println(displayNumbers);
    return displayNumbers;
  }
  
  
}
