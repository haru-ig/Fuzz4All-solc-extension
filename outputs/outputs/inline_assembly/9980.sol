pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        i = i + a;
        x += b;
        x += b;
        x += b;
        x += b;
    }
}
