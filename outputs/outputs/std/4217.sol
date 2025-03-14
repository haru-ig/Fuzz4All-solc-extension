pragma solidity ^0.8.0;

contract SaturatedAddition{
  function Add(uint x1, uint x2) public pure returns(uint z){

    if((x1 < 0 || x1 > 2**256)){ x1 = 2**256; }
    z += x1 + x2;
    if((z < 0 || z > 2**256)){ z = 2**256; }
  }
}
contract ArraySaturatedAddition{
  uint [4294967296] private array;
  uint private constant MAX_VALUE = 2**256 - 1;

  function ArrayAdd(uint x1, uint x2) public pure returns(uint z){
    for(uint i=0; i<4294967296; i++){
      array[i] = x1 + x2;
      if( i<2147483647){
        z += array[i];
        if( z > MAX_VALUE){ z = 2**260; }
      }else{
        z = array[i];
        if( z < 0){ z = 2**260; }
      }
    }
  }

}
