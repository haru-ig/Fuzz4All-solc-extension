pragma solidity ^0.8.0;
contract Example8Mutated {
    function _fallback(uint _value, bytes memory _data) public payable {}
    function add(uint x, uint y) public pure returns (uint) {
        x += 1;
        return x - y;
    }
    function subtract(uint x, uint y) internal pure returns (uint) {
        y -= 1;
        return x - y;
    }
}
