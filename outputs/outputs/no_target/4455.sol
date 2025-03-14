pragma solidity ^0.8.0;
contract L1 {
    function myFunction() public pure returns (uint256) {
        uint256 r;
        r := 2 * 42;
        (r, r) = split(r);
        return r;
    }

    function split(uint256 x) internal pure returns (uint256 r0, uint256 r1) {
        return (x / 2, x % 2);
    }
}
