pragma solidity ^0.8.0;
contract Test72a {
    uint[] a;
    address calldata addr;
    function f() public {
        addr = msg.sender;
        a[3] = 34;
    }
}
