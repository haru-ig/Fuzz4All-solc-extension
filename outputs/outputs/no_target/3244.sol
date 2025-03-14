pragma solidity ^0.8.0;
contract eight {
    function f() public pure returns(int)
    {
        uint256  x = 1234567890;
        x = x + 1234;
        return x;
        x = x * 255;
        return x;
    }
}
