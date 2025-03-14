pragma solidity ^0.8.0;
contract GetArray{
    function f(uint[] memory a){
      uint sum = 0;
      for(uint i=0;i<a.length;i++){
        sum += a[i];
      }
    }
}
/* Please create a short program which uses new Solidity features in a complex way.
