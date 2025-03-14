pragma solidity ^0.8.0;
contract Bar {
    function run() public pure {
        (uint256 r,) = (0, 0);
        (uint256 r,) = (0, 1);
        (uint256 r, uint256 s) = (0,  1);
    }
}
