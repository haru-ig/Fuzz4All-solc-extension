pragma solidity ^0.8.0;
contract Equivalent8 {
    uint8 constant data = 1;
    function f() public view returns (uint8 constant) {
        return data;
    }
}
