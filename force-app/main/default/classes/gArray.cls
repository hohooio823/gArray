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
    public List<Object> without(List<Object> arr,List<Object> secArr) {
        List<Object> newArr = new List<Object>();
        for(Integer i=0;i<arr.size();i++){
             boolean remove = false;
             for(Integer ic=0;ic<secArr.size();ic++){
                 if(arr[i]!=secArr[ic]){
                    if(ic==secArr.size()-1){
                        if(remove == true){
                            newArr.add(arr[i]);
                        }
                    }else{remove=true;}
                 }
            }
            }
        return newArr;
    }
    public List<Object> union(List<Object> arrOne,List<Object> arrTwo,List<Object> arrTri) {
        List<Object> newArr = new List<Object>();
        List<List<Object>> tempArr = new List<List<Object>>{arrOne,arrTwo,arrTri};
        for(Integer i=0;i<tempArr.size();i++){
            for(Integer ic=0;ic<tempArr[i].size();ic++){
                boolean remove = false;
                if(newArr.size()==0){
                    newArr.add(tempArr[i][ic]);
                }else{
                    for(Integer ig=0;ig<newArr.size();ig++){
                        if(newArr[ig]!=tempArr[i][ic]){
                            if(ig==newArr.size()-1){
                                if(remove == false){
                                    newArr.add(tempArr[i][ic]);
                                }
                            }
                        }else{remove=true;}
                    }
                }
        	}
        }
        return newArr;
    }
    public List<Object> intersection(List<Object> arrOne,List<Object> arrTwo) {
        List<Object> newArr = new List<Object>();
        for(Integer i=0;i<arrOne.size();i++){
            for(Integer ig=0;ig<arrTwo.size();ig++){
                boolean remove = false;
                if(arrOne[i]==arrTwo[ig]){
                    if(newArr.size()==0){
                        newArr.add(arrOne[i]);
                    }else{
                        for(Integer ih=0;ih<newArr.size();ih++){
                            if(newArr[ih]!=arrOne[i]){
                                if(remove == false){
                                    newArr.add(arrOne[i]);
                                }
                            }else{remove=true;}
                        }
                    }
                }
            }
        }
        return newArr;
    }
    
}
