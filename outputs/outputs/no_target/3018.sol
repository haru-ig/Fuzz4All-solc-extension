pragma solidity ^0.8.0;
contract third {
    function g() public pure {
        uint256 x = 8;
        uint256 y = (uint256(-(uint256(-y))) + 10);
    }
}
