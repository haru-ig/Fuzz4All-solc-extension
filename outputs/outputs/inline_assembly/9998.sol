pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {
        call();
    }
    function call() internal {
        i = a + 1;
        i = 0;
        call();
    }
}
