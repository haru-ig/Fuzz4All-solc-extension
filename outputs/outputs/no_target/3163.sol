pragma solidity ^0.8.0;
contract six{
    uint public r;
    function __func__() public {
        r = 5;
        r = (r + 25) + (uint256(--r));
    }
}
