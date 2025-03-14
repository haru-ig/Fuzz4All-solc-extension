pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint256) {
        uint256 r;
        r = 42 + (2 / 2);
        while (r >= 1) {
            r = r / 2;
        }
        return r;
    }
}
