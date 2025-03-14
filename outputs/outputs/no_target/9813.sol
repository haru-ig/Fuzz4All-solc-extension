pragma solidity ^0.8.0;
contract c {
    bytes4 constant S4 = 0x11000000;
    bool public exists = true;
    function callme() external returns (bytes4) {
        return S4;
    }
}
