pragma solidity ^0.8.0;
contract test{
    function m(uint256) external pure returns (uint) {
        return 1;
    }

    function m(int) external pure returns (uint) {
        return 1;
    }

    function m(bool) external pure returns (uint) {
        return 1;
    }

    fallback () external pure returns (uint) {
        return 1;
    }
}
