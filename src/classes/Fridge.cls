public class Fridge implements KitchenUtility {
    private String modelNumber;
    private Integer numberInStock;
    
    // void indicates that updateStock method doesnot return any value
    public void updateStock(Integer justSold) {
        numberInStock = numberInStock - justSold;
        }
        
    public void setModelNumber(String theModelNumber) {
        modelNumber = theModelNumber;
        }
   	public String getModelNumber() {
        return 'F' + modelNumber;
        }
    public void setStock (Integer theNumberInStock){
        numberInStock = thenumberInStock;
    }
    public integer getStock (){
        return numberInStock;
    }
        
       // Constructor Class without parameters
    public Fridge() {
        modelNumber = 'XX-XX';
        numberInStock = 0;
        }
        
       // Constructor Class with parameters 
    public Fridge(String theModelNumber, Integer theNumberInStock) {
        modelNumber = theModelNumber;
        numberInStock = theNumberInStock;
        }
        
    
		//Static variable
    public static final Integer STOCK_THRESHOLD = 5;        

        // Static Class Method
    public static void toDebug(Fridge aFridge) {
        System.debug ('ModelNumber = ' + aFridge.modelNumber);
        System.debug ('Number in Stock = ' + aFridge.numberInStock);
        }
    
    
    
    /*
    public Integer ecoRating {
    get { return ecoRating; }
    set { ecoRating = value; if (ecoRating < 0) ecoRating =0; }
	}*/
}