pragma solidity ^0.8.0;
library Lib {
    function mul(uint x, uint y) public pure returns (uint){
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        return (y);
    }
}
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        uint x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        x = x + (Lib.mul(y,10));
        return (Lib.mul(x,2));
    }
}
