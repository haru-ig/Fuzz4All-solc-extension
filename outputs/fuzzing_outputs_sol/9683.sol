pragma solidity ^0.8.0;
contract CallMod {
    uint8 _age;
    receive() payable {
        _age+=msg.value;
    }
}
