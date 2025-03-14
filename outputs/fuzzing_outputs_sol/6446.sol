pragma solidity ^0.8.0;
contract C {
    uint public x = 3;
    receive() external payable {
        Storage_01 storage s = Storage_01(0x0);
        s.x++;
    }
}
