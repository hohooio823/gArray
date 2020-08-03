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
            if(n<arr.size()){
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
    public Object last(List<Object> arr) {
        if(arr!=null){
         Object newObject = arr[arr.size()-1];
         return newObject;
        }else{return null;}
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
            List<Object> newArr = new List<Object>();
            Set<Object> newSet = new Set<Object>();
            for(Integer i=0;i<tempArr.size();i++){
                for(Integer ic=0;ic<tempArr[i].size();ic++){
                    boolean remove = false;
                    if(newArr.size()==0){
                        newArr.add(tempArr[i][ic]);
                        newSet.add(tempArr[i][ic]);
                    }else{
                        for(Integer ig=0;ig<newArr.size();ig++){
                            if(newArr[ig]!=tempArr[i][ic]){
                                if(ig==newArr.size()-1){
                                      newArr.add(tempArr[i][ic]);
                                      newSet.add(tempArr[i][ic]);
                                }
                            }else{break;}
                        }
                    }
                }
            }
            return newSet;
        }else{return null;}
    }
    public Set<Object> intersection(List<List<Object>> tempArr) {
        if(tempArr!=null){
            List<Object> arr = new List<Object>();
            List<Object> newArr = new List<Object>();
            Set<Object> newSet = new Set<Object>();
            
            for(Integer i=0;i<tempArr[0].size();i++){
                for(Integer ig=0;ig<tempArr[1].size();ig++){
                    boolean remove = false;
                    if(tempArr[0][i]==tempArr[1][ig]){
                        if(newArr.size()==0){
                            newArr.add(tempArr[0][i]);
                            if(tempArr.size()<=2){
                            	newSet.add(tempArr[0][i]);
                            }
                        }else{
                            for(Integer ih=0;ih<newArr.size();ih++){
                                if(newArr[ih]!=tempArr[0][i]){
                                        newArr.add(tempArr[0][i]);
                                        if(tempArr.size()<=2){
                                            newSet.add(tempArr[0][i]);
                                        }
                                }else{break;}
                            }
                        }
                    }
                }
            }
            if(tempArr.size()>2){
                for(Integer ik=2;ik<tempArr.size();ik++){
                    arr = newArr;
                    newArr = new List<Object>();
                    for(Integer i=0;i<tempArr[ik].size();i++){
                        for(Integer ig=0;ig<arr.size();ig++){
                            boolean remove = false;
                            if(tempArr[ik][i]==arr[ig]){
                                if(newArr.size()==0){
                                    newArr.add(tempArr[ik][i]);
                                    if(ik==tempArr.size()-1){
                                        newSet.add(tempArr[ik][i]);
                                    }
                                }else{
                                    for(Integer ih=0;ih<newArr.size();ih++){
                                        if(newArr[ih]!=tempArr[ik][i]){
                                                newArr.add(tempArr[ik][i]);
                                            	if(ik==tempArr.size()-1){
                                                    newSet.add(tempArr[ik][i]);
                                                }
                                        }else{break;}
                                    }
                                }
                            }
                        }
                    }
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
                  if (arr[i] == arr[b])
                     duplicate = true;
                  b++;}
                if (duplicate == false)
                  newArr.add(arr[i] + '');}
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
            for(Integer i=start;i<value/step;i++){
                newArr.add(currentAdd);
                currentAdd += step; 
            }
            return newArr;
        }else{return null;}
    }
}
