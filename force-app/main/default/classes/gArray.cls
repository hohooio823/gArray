public with sharing class gArray {
    public List<Integer> first(List<Integer> arr) {
        List<Integer> newArr = new List<Integer>();
        newArr.add(arr[0]);
        return(newArr);
    }
    public List<Integer> first(List<Integer> arr,Integer n) {
            List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<n;i++){
                newArr.add(arr[i]);
            }
            return(newArr);
    }
    public List<Integer> initial(List<Integer> arr) {
        List<Integer> newArr = new List<Integer>();
        for(Integer i=0;i<arr.size()-1;i++){
                newArr.add(arr[i]);
            }
        return(newArr);
    }
    public List<Integer> initial(List<Integer> arr,Integer n) {
        List<Integer> newArr = new List<Integer>();
        for(Integer i=0;i<arr.size()-n;i++){
                newArr.add(arr[i]);
            }
        return(newArr);
    }
    public List<Integer> last(List<Integer> arr) {
        List<Integer> newArr = new List<Integer>();
        newArr.add(arr[arr.size()-1]);
        return(newArr);
    }
    public List<Integer> last(List<Integer> arr,Integer n) {
            List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=arr.size()-n){
                    newArr.add(arr[i]);
                }
            }
            return(newArr);
    }
    public List<Integer> rest(List<Integer> arr) {
        List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<arr.size();i++){
                if(i+1<arr.size()){
                newArr.add(arr[i+1]); 
                }
            }
            return(newArr);
    }
    public List<Integer> rest(List<Integer> arr,Integer n) {
        List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=n){
                newArr.add(arr[i]); 
                }
            }
            return(newArr);
    }
}
