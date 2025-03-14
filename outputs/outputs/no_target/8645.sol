pragma solidity ^0.8.0;
contract RevertTest {
    function f(uint256 x) internal pure returns (bool) {
        return uint256(x) ^ 0;
    }
}
