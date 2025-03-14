pragma solidity ^0.8.0;
contract Example8 {
    function _fallback(uint _value, bytes memory _data) public payable {}

    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        return x + y;
    }
}
