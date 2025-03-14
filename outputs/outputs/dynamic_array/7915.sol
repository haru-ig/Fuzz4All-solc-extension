pragma solidity ^0.8.0;
contract Test28 {
    address[ ] public addresses;
    function f() public {
        delete[] addresses;
    }
}
