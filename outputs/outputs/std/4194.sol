pragma solidity ^0.8.0;
contract Array{
    function GetMax(uint[5] memory x, uint y) public pure returns (uint max){
      max = x[y];
    }
    function Modify(
        uint[5] memory x,
        uint newValue,
        uint y
    ) public pure {
        if(y < 3)
        {
          x[y] = newValue;
        }
        else if(y == 3)
        {
          x[y] = newValue;
        }
    }
}
