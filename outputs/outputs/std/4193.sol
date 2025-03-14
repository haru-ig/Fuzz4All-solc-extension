pragma solidity ^0.8.0;
contract ArrayM{
    uint x = 1;
    uint y = 2;
    function Modify(uint x, uint y) public pure{
            x = x + y;
        y = x;
    }
    function GetMax(uint x,uint y) public pure returns (uint max){
        max = x*x + y*y;
    }
}
