pragma solidity ^0.8.0;
library abi_1 {
    function f(uint256) public pure returns (uint256) {
        return 1;
    }
}
contract semantic_equiv {
    uint256 public a = 1;
    function f() public pure virtual returns (uint256) {
        a = 2;
        return abi_1.f(a);
    }
}
