pragma solidity ^0.8.0;
library Lib {
}
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        return ((x + (Lib.mul(y,10))) + (Lib.mul(y,10))) + (Lib.mul(y,10))) + (Lib.mul(y,10))) + (Lib.mul(y,10))) + (x * 10);
    }
}
