pragma solidity ^0.8.0;
contract Mutated{
    function Create(uint[] memory x) public pure {
      if(x.length == 3){
          x[2] = 2;
          x[3] = 4;
      }
    }
}
