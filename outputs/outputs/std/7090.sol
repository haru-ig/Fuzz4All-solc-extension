pragma solidity ^0.8.0;
contract Bitshift {
    uint256 x;
    function shiftRight() public {
        x >>= 1;
    }

    function shiftLeft() public {
        x <<= 1;
    }
}
