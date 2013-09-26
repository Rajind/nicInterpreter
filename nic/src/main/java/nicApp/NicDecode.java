package nicApp;
import org.joda.time.LocalDate;

public class NicDecode {
    private boolean isMale;
    private boolean isVoter;
    private int record;
    LocalDate date;
    
    int array[] = {31,29,31,30,31,30,31,30,31,31,30,31};
    final int total = 366;
    public NicProp createNicProp(String nic){
        return new NicProp(nic);
    }
    
    public void calculate(NicProp nic){
         String strDayCount = nic.getNic().substring(2, 5);
         int intDayCount = Integer.parseInt(strDayCount);
         if(intDayCount >366){
             isMale = false;
             intDayCount = intDayCount - 500; 
         }else{
             isMale = true;
         }
         
         if(nic.getNic().charAt(9) == 'V'){
             isVoter = true;
         }else{
             isVoter = false;
         }
         int i=0;
         while(intDayCount >0){
             if(intDayCount > array[i]){
                intDayCount = intDayCount-array[i];
                i++;
             }else
                 break;
         }
         date = new LocalDate(Integer.parseInt("19"+ nic.getNic().substring(0, 2)),i+1,intDayCount);
         record = Integer.parseInt(nic.getNic().substring(5, 7));
    }
    
    public int getRecord(){
        return record;
    }
    public LocalDate getdate(){
        return date;
    }
      
    public String getGender(){
        if(isMale)
            return "Male";
        else
            return "Female";
    }
    
    public String getVote(){
        if(isVoter)
            return "Voter";
        else
            return "Non-Voter";
    }
}
