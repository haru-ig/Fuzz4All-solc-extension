pragma solidity ^0.8.0;
contract A {
    function g() public pure returns (uint256) {
        return 14 * 27.58;
    }
}
contract Main {
    function main() public pure {
        uint256 a = A.g();
        uint256 b = g();
        assert(true);
    }
}
