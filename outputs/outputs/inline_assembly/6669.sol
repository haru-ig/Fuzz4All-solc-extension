pragma solidity ^0.8.0;
interface MixedContactsExample102Interface {
    function doesSomething() external returns (bool);
}
contract MixedContactsExample102 {
    uint x;
    address a;
    function doSomething() public returns (uint64) {
        a = 0xFFEEEEEEEEEE;

        uint32[24] memory  _a;
        _a[0] = 3;
        _a[8] = 12;
        _a[16] = 2;

    }
}
