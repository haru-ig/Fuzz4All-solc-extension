pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint256) {
        uint256 r;
        r = 42 + 32;
        r = r * 2;
        r = r * 3;
        return r;
    }
}
