pragma solidity ^0.8.0;
contract Array{
    function Modify(
        uint[5] memory x,
        uint newValue,
        uint y
    ) public pure {
        if(y == 2){
            x[1] = newValue;
        }
    }
}
