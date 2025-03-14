pragma solidity ^0.8.0;
contract AdditionContract {
    function add(uint x, uint y) public pure virtual returns (uint) {
        return (x + y);
    }
    function add_two_zeros(uint x, uint y) public pure virtual returns (uint) {
        return (x + (y >> 224));
    }
}
