pragma solidity ^0.8.0;
contract C {
    uint private c;
    uint public D;
    function f() public {
        if (c > 2) {
            c += 1;
        }
    }
}
