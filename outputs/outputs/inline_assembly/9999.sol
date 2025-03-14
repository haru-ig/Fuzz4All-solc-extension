pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a) public {
        i = a;
        x = 1;
        i = 0;
        i = a + 1;
    }
}
