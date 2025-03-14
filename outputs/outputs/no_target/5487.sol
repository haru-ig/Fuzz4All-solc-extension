pragma solidity ^0.8.0;
contract O {
    uint public x;
    function y(uint x) internal {
        revert("revert");
    }
    function xz(uint x) public view returns (uint) {
        return xz(x);
    }
    function xz(uint x) public pure returns (uint) {
        return 3 * (x + 1);
    }
}
