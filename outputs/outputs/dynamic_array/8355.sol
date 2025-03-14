pragma solidity ^0.8.0;

contract Solidity14To16 {
    function increment() public {
        uint8 a = 6;
        uint8 b = 2;
        uint8 maxA = 4;
        a = a + 1;
        b = b + 3;
        maxA = maxA + 3;
    }
}
