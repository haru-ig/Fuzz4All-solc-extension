pragma solidity ^0.8.0;
contract Bar2 {
    function g(uint256 x) internal returns (uint256) {
        return uint256(x * x * x);
    }
}

pragma solidity ^0.8.0;
contract Bar3 {
    function g(uint256 x) internal returns (uint256) {
        x = 2 * x * x * x * x;
        return x;
    }
}
foo() {
    Bar _bar;
    Bar2 _bar2;
    Bar3 _bar3;
}
