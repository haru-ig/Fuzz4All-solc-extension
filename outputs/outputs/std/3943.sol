pragma solidity ^0.8.0;
contract Array {
    uint256 public total;
    uint256 public capacity;
    uint256[25] public array;
    constructor (uint[25] memory a) public {
        total = 25;
        array = a;
        capacity = 25;
    }
    function getter(uint pos) public view returns (uint) {
        return array[pos];
    }
    function setter(uint pos, uint a) public {
        if (pos >= total || pos < 0) {
            return;
        }
        array[pos] = a;
    }
}
