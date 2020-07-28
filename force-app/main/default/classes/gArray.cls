public with sharing class gArray {
    public List<Object> first(List<Object> arr) {
        if(arr!=null){
            List<Object> newArr = new List<Object>();
            newArr.add(arr[0]);
            return newArr;
        }else{
            return null;
        }
    }
    public List<Object> first(List<Object> arr,Integer n) {
        if(arr!=null && n!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<n;i++){
                newArr.add(arr[i]);
            }
            return newArr;
        }else{
            return null;
        }
    }
    public List<Object> initial(List<Object> arr) {
        if(arr!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size()-1;i++){
                    newArr.add(arr[i]);
                }
            return newArr;
        }else{return null;}
    }
    public List<Object> initial(List<Object> arr,Integer n) {
        if(arr!=null&&n!=null){
             List<Object> newArr = new List<Object>();
             for(Integer i=0;i<arr.size()-n;i++){
                     newArr.add(arr[i]);
             }
             return newArr;
         }else{return null;}
     }
     public List<Object> last(List<Object> arr) {
        if(arr!=null){
         List<Object> newArr = new List<Object>();
         newArr.add(arr[arr.size()-1]);
         return newArr;
        }else{return null;}
    }
    public List<Object> last(List<Object> arr,Integer n) {
        if(arr!=null&&n!=null){
         List<Object> newArr = new List<Object>();
         for(Integer i=0;i<arr.size();i++){
             if(i>=arr.size()-n){
                 newArr.add(arr[i]);
             }
         }
         return newArr;  
        }else{return null;}
        
    }
    public List<Object> rest(List<Object> arr) {
        if(arr!=null){
          List<Object> newArr = new List<Object>();
          for(Integer i=0;i<arr.size();i++){
              if(i+1<arr.size()){
                 newArr.add(arr[i+1]); 
              }
          }
          return newArr;  
         }else{return null;}
     }
    public List<Object> rest(List<Object> arr,Integer n) {
        if(arr!=null&&n!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size();i++){
                if(i>=n){
                    newArr.add(arr[i]); 
                }
            }
            return newArr;
    	}else{return null;}  
    }
    public List<Object> flatten(List<List<Object>> arr) {
        if(arr!=null){
            List<Object> newArr = new List<Object>();
            newArr = arr[0];
            return newArr;
        }else{return null;}
    }
    public List<Object> without(List<Object> arr,List<Object> secArr) {
        if(arr!=null&&secArr!=null){
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
        }else{return null;}
    }
    public List<Object> union(List<Object> arrOne,List<Object> arrTwo,List<Object> arrTri) {
        if(arrOne!=null&&arrTwo!=null&&arrTri!=null){
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
        }else{return null;}
    }
    public List<Object> intersection(List<Object> arrOne,List<Object> arrTwo) {
        if(arrOne!=null&&arrTwo!=null){
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
        }else{return null;}
    }
    public List<Object> uniq(List<Object> arr) {
        if(arr!=null){
            List<Object> newArr = new List<Object>();
            for (Integer i = 0; i < arr.size(); i++){
                boolean duplicate = false;
                Integer b = 0;
                while (b < i){
                  if (arr[i] == arr[b])
                     duplicate = true;
                  b++;}
                if (duplicate == false)
                  newArr.add(arr[i] + '');}
            return newArr;
        }else{return null;}
    }
    public List<Object> zip(List<Object> arrOne,List<Object> arrTwo,List<Object> arrTri) {
        if(arrOne!=null&&arrTwo!=null&&arrTri!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arrOne.size();i++){
                List<Object> arr = new List<Object>();
                arr.add(arrOne[i]);
                arr.add(arrTwo[i]);
                arr.add(arrTri[i]);
                newArr.add(arr);
            }
            return newArr;    
        }else{return null;}
    }
    public List<List<Object>> unzip(List<List<Object>> arr) {
        if(arr!=null){
             List<List<Object>> newArr = new List<List<Object>>();
             for(Integer i=0;i<arr[0].size();i++){
                 List<Object> tempArr = new List<Object>();
                 for(Integer ic=0;ic<arr.size();ic++){
                     tempArr.add(arr[ic][i]);
                 }
             newArr.add(tempArr);
         }
         return newArr;
        }else{return null;}
    }
    public List<List<Object>> chunk(List<Object> arr, Integer n) {
        if(arr!=null&&n!=null){
            List<List<Object>> newArr = new List<List<Object>>();
            Integer currentIndex = 0;
            for(Integer i=0;i<arr.size()/n+1;i++){
                List<Object> tempArr = new List<Object>();
                for(Integer ic=0;ic<n;ic++){
                    if(currentIndex<arr.size()){
                        tempArr.add(arr[currentIndex]); 
                    }
                    currentIndex++;
                }
                newArr.add(tempArr);
            }
            return newArr;
        }else{return null;}
    }
    public object indexOf(List<Object> arr,object value) {
        if(arr!=null&&value!=null){
            object Index ;
            for(Integer i=0;i<arr.size();i++){
                if(Index==null || Index==-1){
                    if(arr[i]==value){
                        Index = i;
                    }else{Index = -1;}
                }
            }
            return Index;
        }else{return null;}
    }
    public object lastIndexOf(List<Object> arr,object value) {
        if(arr!=null&&value!=null){
            object Index ;
            for(Integer i=arr.size()-1;i>=0;i--){
                if(Index==null || Index==-1){
                    if(arr[i]==value){
                        Index = i;
                    }else{Index = -1;}
                }
            }
            return Index;
        }else{return null;}
    }
    public object sortedIndex(List<Integer> arr,Integer value) {
        if(arr!=null&&value!=null){
            object Index ;
            for(Integer i=0;i<arr.size();i++){
                if(value>=arr[i]&&value<=arr[i+1]){
                    Index = i+1;
                }
            }
            return Index;  
        }else{return null;}
    }
    public List<Object> range(Integer value) {
        if(value!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<value;i++){
                newArr.add(i);
            }
            return newArr;
        }else{return null;}
    }
    public List<Object> range(Integer start,Integer value) {
        if(start!=null&&value!=null){
            List<Object> newArr = new List<Object>();
            if(start==1){
                for(Integer i=1;i<value;i++){
                    newArr.add(i);
                }
            }else if(start==0){
                for(Integer i=0;i<value;i++){
                    newArr.add(i);
                }
            }
            return newArr;
        }else{return null;}
    }
    public List<Object> range(Integer start,Integer value,Integer step) {
        if(start!=null&&value!=null&&step!=null){
            List<Object> newArr = new List<Object>();
            Integer currentAdd = 0;
            for(Integer i=start;i<value/step;i++){
                newArr.add(currentAdd);
                currentAdd += step; 
            }
            return newArr;
        }else{return null;}
    }
}
