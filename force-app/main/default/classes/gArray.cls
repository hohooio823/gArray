public with sharing class gArray {
    public Object first(List<Object> arr) {
        if(arr!=null){
            Object newObject = arr[0];
            return newObject;
        }else{
            return null;
        }
    }
    public List<Object> first(List<Object> arr,Integer n) {
        if(arr!=null && n!=null){
            if(n<=arr.size()){
                List<Object> newArr = new List<Object>();
                for(Integer i=0;i<n;i++){
                    newArr.add(arr[i]);
                }
                return newArr;
            }else{return null;}
        }else{
            return null;
        }
    }
    public List<Object> initial(List<Object> arr) {
        return initial(arr,1);
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
    public Object last(List<Object> arr) {
        return last(arr,1);
    }
    public List<Object> last(List<Object> arr,Integer n) {
        if(arr!=null&&n!=null){
            if(n!=0){
                List<Object> newArr = new List<Object>();
                for(Integer i=arr.size()-n;i<arr.size();i++){
                    newArr.add(arr[i]);
                }
                return newArr;  
            }else{return null;}
        }else{return null;}
    }
    public List<Object> rest(List<Object> arr) {
        if(arr!=null){
          List<Object> newArr = new List<Object>();
          for(Integer i=1;i<arr.size();i++){
              newArr.add(arr[i]);
          }
          return newArr;  
        }else{return null;}
    }
    public List<Object> rest(List<Object> arr,Integer n) {
        if(arr!=null&&n!=null){
            if(n!=0){
                List<Object> newArr = new List<Object>();
                for(Integer i=n;i<arr.size();i++){
                    newArr.add(arr[i]);
                }
                return newArr;
            }else{return null;}
    	}else{return null;}  
    }
    public List<Object> flatten(List<Object> arr) {
        if(arr!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size();i++){
                if(arr[i] instanceOf List<Object>){
                    newArr.addAll(flatten((List<Object>)arr[i]));
                }else{
                    newArr.add(arr[i]);
                }
            }
            return newArr;
        }else{return null;}
    }
    public List<Object> without(List<Object> arr,List<Object> secArr) {
        if(arr!=null&&secArr!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<arr.size();i++){
                for(Integer ic=0;ic<secArr.size();ic++){
                    if(arr[i]!=secArr[ic]){
                        if(ic==secArr.size()-1){
                            newArr.add(arr[i]);
                        }
                    }else{break;}
                }
            }
            return newArr;
        }else{return null;}
    }
    public Set<Object> union(List<List<Object>> tempArr) {
        if(tempArr!=null){
            Set<Object> newSet = new Set<Object>();
            for(Integer i=0;i<tempArr.size();i++){
                if(tempArr[i]!=null){
                    for(Integer ic=0;ic<tempArr[i].size();ic++){
                        if(newSet.size()==0){
                            newSet.add(tempArr[i][ic]);
                        }else{
                            for(Integer ig=0;ig<newSet.size();ig++){
                                if(!newSet.contains(tempArr[i][ic])){
                                    if(ig==newSet.size()-1){
                                        newSet.add(tempArr[i][ic]);
                                    }
                                }else{break;}
                            }
                        }
                    }
                }else{return null;}
            }
            return newSet;
        }else{return null;}
    }
    public Set<Object> intersection(List<List<Object>> tempArr) {
        if(tempArr!=null){
            Set<Object> newSet = new Set<Object>(tempArr[0]);
            newSet.removeAll(without(new List<Object>(newSet),tempArr[1]));
            if(tempArr.size()>2){
                for(Integer ik=2;ik<tempArr.size();ik++){
                	newSet.removeAll(without(new List<Object>(newSet),tempArr[ik]));    
                }
            }
            return newSet;
        }else{return null;}
    }
    public List<Object> uniq(List<Object> arr) {
        if(arr!=null){
            List<Object> newArr = new List<Object>();
            for (Integer i = 0; i < arr.size(); i++){
                boolean duplicate = false;
                Integer b = 0;
                while (b < i){
                    if (arr[i] == arr[b]){
                        duplicate = true;
                    }
                    b++;
                }
                if (duplicate == false){
                    newArr.add(arr[i] + '');
                }
            }
            return newArr;
        }else{return null;}
    }
    public List<Object> zip(List<List<object>> tempArr) {
        if(tempArr!=null){
            List<Object> newArr = new List<Object>();
            for(Integer i=0;i<tempArr[0].size();i++){
                List<Object> arr = new List<Object>();
                for(Integer ic=0;ic<tempArr.size();ic++){
                 	arr.add(tempArr[ic][i]);
                    if(ic==tempArr.size()-1){
                      newArr.add(arr); 
                    }  
                }
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
                if(temparr.size()!=0){
                	newArr.add(tempArr);  
                }
            }
            return newArr;
        }else{return null;}
    }
    public Integer indexOf(List<Object> arr,object value) {
        if(arr!=null&&value!=null){
            Integer Index ;
            for(Integer i=0;i<arr.size();i++){
                if(Index==null || Index==-1){
                    if(arr[i]==value){
                        Index = i;
                        break;
                    }else{Index = -1;}
                }
            }
            return Index;
        }else{return null;}
    }
    public Integer lastIndexOf(List<Object> arr,object value) {
        if(arr!=null&&value!=null){
            Integer Index ;
            for(Integer i=arr.size()-1;i>=0;i--){
                if(Index==null || Index==-1){
                    if(arr[i]==value){
                        Index = i;
                        break;
                    }else{Index = -1;}
                }
            }
            return Index;
        }else{return null;}
    }
    public Integer sortedIndex(List<Integer> arr,Integer value) {
        if(arr!=null&&value!=null){
            Integer Index ;
            for(Integer i=0;i<arr.size();i++){
                if(value>=arr[i]&&value<=arr[i+1]){
                    Index = i+1;
                    break;
                }
            }
            return Index;  
        }else{return null;}
    }
    public List<Integer> range(Integer value) {
        if(value!=null){
            List<Integer> newArr = new List<Integer>();
            for(Integer i=0;i<value;i++){
                newArr.add(i);
            }
            return newArr;
        }else{return null;}
    }
    public List<Integer> range(Integer start,Integer value) {
        if(start!=null&&value!=null){
            List<Integer> newArr = new List<Integer>();
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
    public List<Integer> range(Integer start,Integer value,Integer step) {
        if(start!=null&&value!=null&&step!=null){
            List<Integer> newArr = new List<Integer>();
            Integer currentAdd = 0;
            for(Integer i=start;i<=value/step;i++){
                newArr.add(currentAdd);
                currentAdd += step; 
            }
            return newArr;
        }else{return null;}
    }
}
