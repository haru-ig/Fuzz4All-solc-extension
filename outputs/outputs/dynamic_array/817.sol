pragma solidity ^0.8.0;
contract MyContract {
    uint[] public numbers;

    uint216 constant value = 2 << 20;
    uint216 constant lowValue = min(uint216(10**20), value);

    uint[] arrayUint {
     uint16[] dynamicArrayA = new uint16[](value);
     uint16[lowValue] dynamicArrayB;
    }
}
