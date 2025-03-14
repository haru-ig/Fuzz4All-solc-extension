pragma solidity ^0.8.0;
contract C {
    bytes32 x;
    function myFunction() public {
        bytes32 s = -1;
        x = s;
    }
}
