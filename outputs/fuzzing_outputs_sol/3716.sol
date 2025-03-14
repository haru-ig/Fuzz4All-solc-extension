pragma solidity ^0.8.0;
contract Example8Mutated {
    function _fallback(uint _value, bytes memory _data) public payable {
        uint i = 17;
        i;
        return add(i, y);
    }
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        return x + y;
    }
}
