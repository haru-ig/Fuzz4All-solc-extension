pragma solidity ^0.8.0;
contract MixedContactsExample318 {
    uint56 x;
    uint32 y;
    uint56 z;
    function doSomething() public view returns (uint) {
        uint i = y;
        uint32 j = x % 4;
        if (j == 0) {
            z += i + y;
            x = a;
        }
        uint56 k = (x + a) / 2 * 19;
        return k;
    }
}
