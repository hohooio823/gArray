public with sharing class gArray {
    public List<Object> first(List<Object> arr) {
        List<Object> newArr = new List<Object>();
        newArr.add(arr[0]);
        return newArr;
    }
    public List<Object> first(List<Object> arr,Integer n) {
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<n;i++){
                newArr.add(arr[i]);
            }
            return newArr;
    }
    public List<Object> initial(List<Object> arr) {
        List<Object> newArr = new List<Object>();
        for(Integer i=0;i<arr.size()-1;i++){
                newArr.add(arr[i]);
            }
        return newArr;
    }
    public List<Object> initial(List<Object> arr,Integer n) {
        List<Object> newArr = new List<Object>();
        for(Integer i=0;i<arr.size()-n;i++){
                newArr.add(arr[i]);
            }
        return newArr;
    }
    public List<Object> last(List<Object> arr) {
        List<Object> newArr = new List<Object>();
        newArr.add(arr[arr.size()-1]);
        return newArr;
    }
    public List<Object> last(List<Object> arr,Integer n) {
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=arr.size()-n){
                    newArr.add(arr[i]);
                }
            }
            return newArr;
    }
    public List<Object> rest(List<Object> arr) {
        List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size();i++){
                if(i+1<arr.size()){
                newArr.add(arr[i+1]); 
                }
            }
            return newArr;
    }
    public List<Object> rest(List<Object> arr,Integer n) {
        List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=n){
                newArr.add(arr[i]); 
                }
            }
            return newArr;
    }
    public List<Object> flatten(List<List<Object>> arr) {
        List<Object> newArr = new List<Object>();
        newArr = arr[0];
        return newArr;
    }
}
