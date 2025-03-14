pragma solidity ^0.8.0;
contract eight {
    uint r;
    function __func__() public {
        r = (r >> 25) | ~r;
    }
}
