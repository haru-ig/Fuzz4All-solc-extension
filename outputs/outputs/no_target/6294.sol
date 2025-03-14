pragma solidity ^0.8.0;
contract C {
    function get(uint) public pure returns (C) {
        return C(0);
    }
}
