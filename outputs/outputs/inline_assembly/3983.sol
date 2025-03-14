pragma solidity ^0.8.0;
contract MyContract1 {
    uint8 x = 1;
    uint8 y = 0;

    function foo(uint8 argY, uint8 argX) public pure returns (uint8 x, uint8 y)
    {
        x = argX;
        y = argY;
        x = sub(x, sub(y, 128));
    }
}
