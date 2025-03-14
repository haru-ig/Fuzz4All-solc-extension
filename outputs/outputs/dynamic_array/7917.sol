pragma solidity ^0.8.0;
contract Test28 {
    address[10] public addresses;
    function g() public {
        delete addresses[1];
    }
}
