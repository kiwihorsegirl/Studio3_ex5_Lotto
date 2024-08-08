class PowerballLine extends LottoLine {
  
  private int _powerballNumber;
  
  public PowerballLine (int num1, int num2, int num3, int num4, int num5, int num6, int powerballNumber) {
    //calling the superclass constructor to use its fields
    super(num1, num2, num3, num4, num5, num6);
    
    _powerballNumber = powerballNumber;
    
  }
  
  public String toString() {
   
    return super.toString() + " " + _powerballNumber;
  }
}
