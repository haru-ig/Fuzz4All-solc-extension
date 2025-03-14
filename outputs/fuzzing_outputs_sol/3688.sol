pragma solidity ^0.8.0;
contract Example6{
    function add7Sum(uint x, uint y) pure public returns (uint) {
        uint sum = x + y;
        sum = x;
        return sum;
    }
    function add8Sum(uint x, uint y) pure public returns (uint) {
        x = x + y;
        x = x + y;
        return x;
    }
    function add9Sum(uint x) pure public returns (uint) {
        uint  sum = x + x;
        sum = 0;
        return sum;
    }
}
