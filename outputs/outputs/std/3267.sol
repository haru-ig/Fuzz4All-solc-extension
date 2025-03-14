pragma solidity ^0.8.0;
contract GivesRandom{
  function g(uint arr)
    public
    view
    returns(uint _sum,uint _min,uint _max)
  {
    if(arr==0){return (0,-1,-1);}
    uint i;
    uint j;
    uint k;
    uint l;
    uint m;
    uint len=0;
    uint arrLen=arr.length;
    for (i = 0 ; i < arrLen ; i++) {
      bZero[i]=0;
      bOne[i]=1;
    }
    _sum = arr[0];
    _min=arr[0];
    _max=arr[0];
    for (i = 0 ; i < arrLen ; i++ ) {
      if(bZero[i] > _sum ) {_sum = bZero[i];}
      if(bOne[i] < _max ) {_max = bOne[i];}
      if(bZero[i]< _min && (arr[i] < _sum)) {_sum = arr[i];}
      if(bOne[i]>_max && (arr[i] > _max)) {_max = arr[i];}



    }

  }
}
