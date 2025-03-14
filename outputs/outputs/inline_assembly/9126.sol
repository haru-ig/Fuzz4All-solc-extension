pragma solidity ^0.8.0;
library Lib {
    function add1(uint x) public pure returns (uint) {
        return (x+1);
    }
}
contract C {
    function getResult(uint x) public view returns (uint) {
        uint x = x + (x+6);
        uint x = x + (x+6);
        uint x = x + (x+6);
        uint x = x + (x+6);
        uint x = x + (x+6);
        uint x = x + (x+6);
        uint x = x + (x+6);
        return (Lib.add1(x));
    }
}
