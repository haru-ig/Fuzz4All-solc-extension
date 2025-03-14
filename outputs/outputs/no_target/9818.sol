pragma solidity ^0.8.0;
contract c {
    uint constant S2 = 0x00;
    uint32 public exists = 0x12;
    function callme() external returns (bytes4) {
        return S2;
    }
}
