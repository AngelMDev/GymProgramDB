

function the_flattening_2_electric_boogaloo(arr) {
  return_array=[]
  for(var i=0;i<arr.length;i++){
    if (Array.isArray(arr[i])){
      return_array.concat(the_flattening_2_electric_boogaloo(arr[i]))
    }else{
      return_array.push(arr[i])
    }
  }
  return return_array
}

myArr=[1,4,[2,3],'A']

function sumArray(arr){
  count=0
  for(var i=0;i<arr.length;i++){
    if (Array.isArray(arr[i])){
      count += sumArray(arr[i])
    }else if(typeof(arr[i])=="number"){
      count += parseInt(arr[i])
    }
  }
  return count
}

sumArray(myArr)

arr=["banana","strawberry","banana","strawberry","coconut","blueberry","peach","grape","banana","peach"]

function uniqueArray(arr){
  for(var i=0;i<arr.length;i++){
    myString=arr[i]
    for(var j = arr.length - 1; j >= 0; j--){
      if(i!=j){
        if(myString==arr[j]){
          arr.splice(j,1)
        }
      }
    }
  }
return arr
}

uniqueArray(arr)


function pythagoreanTriplet(){
  for(var a=0;a<1000;a++){
    for(var b=0;b<1000;b++){
      for(var c=0;c<1000;c++){     
        if(a<b && b<c){
          if(a+b+c==1000){
            if(c==Math.sqrt(Math.pow(b,2)+Math.pow(a,2))){
              console.log("a: "+a+" b: "+b+" c: "+c)
              console.log("product: "+a*b*c)
            }
          }
        }
      }
    }
  }
}


pythagoreanTriplet()

function pythagoreanTriplet2(){
  for(var a=0;a<1000;a++){
    for(var b=0;b<1000;b++){
      var c=Math.sqrt(Math.pow(a,2)+(Math.pow(b,2)))
      if(a<b&&b<c){
        if(1000==c+b+a){
          console.log("a: "+a+" b: "+b+" c: "+c)
          console.log("product: "+a*b*c)
        }
      }
    }
  }
}

pythagoreanTriplet2()


