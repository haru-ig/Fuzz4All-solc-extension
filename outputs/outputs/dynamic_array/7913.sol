pragma solidity ^0.8.0;
contract Test27 {
    address[ ] public addresses;
    function f() public {
        delete addresses[1];
    }
}
