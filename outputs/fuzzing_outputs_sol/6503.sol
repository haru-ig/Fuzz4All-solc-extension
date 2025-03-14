pragma solidity ^0.8.0;
contract C is C {
    function baz() public pure returns (bool z) {
        return true;
    }
}
