pragma solidity ^0.8.0;
contract C {
    bytes32 private v;
    function myFunction() public {
        bytes32 n = 0;
        n = v;
    }
}
