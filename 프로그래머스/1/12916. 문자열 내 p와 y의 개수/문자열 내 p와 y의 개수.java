class Solution {
    boolean solution(String s) {
        boolean answer = true;
        
        int p_count = 0;
        int y_count = 0;
        
        for(int i =0;i<s.length();i++){
            if (s.charAt(i) == 'p' || s.charAt(i) == 'P'){
                p_count++;
            }
            else if(s.charAt(i) == 'y' || s.charAt(i) == 'Y'){
                y_count++;
            }
        }
        
        if (p_count == y_count){
            return true;
        }
        
        return false;
    }
}