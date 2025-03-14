pragma solidity ^0.8.0;
contract Test28 {
    bytes[] public bytes;
    function f() public {
        delete bytes[0];
    }
}
