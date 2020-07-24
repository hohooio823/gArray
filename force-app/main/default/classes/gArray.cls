public with sharing class gArray {
    public void first(List<Integer> arr) {
        System.debug(arr[0]);
    }
    public void first(List<Integer> arr,Integer n) {
            List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<n;i++){
                newArr.add(arr[i]);
            }
            System.debug(newArr);
    }
    public void initial(List<Integer> arr) {
        List<Integer> newArr = new List<Integer>();
        for(Integer i=0;i<arr.size()-1;i++){
                newArr.add(arr[i]);
            }
        System.debug(newArr);
    }
    public void initial(List<Integer> arr,Integer n) {
        List<Integer> newArr = new List<Integer>();
        for(Integer i=0;i<arr.size()-n;i++){
                newArr.add(arr[i]);
            }
        System.debug(newArr);
    }
    public void last(List<Integer> arr) {
        System.debug(arr[arr.size()-1]);
    }
    public void last(List<Integer> arr,Integer n) {
            List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=arr.size()-n){
                    newArr.add(arr[i]);
                }
            }
            System.debug(newArr);
    }
    public void rest(List<Integer> arr) {
        List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<arr.size();i++){
                if(i+1<arr.size()){
                newArr.add(arr[i+1]); 
                }
            }
            System.debug(newArr);
    }
    public void rest(List<Integer> arr,Integer n) {
        List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=n){
                newArr.add(arr[i]); 
                }
            }
            System.debug(newArr);
    }
}
