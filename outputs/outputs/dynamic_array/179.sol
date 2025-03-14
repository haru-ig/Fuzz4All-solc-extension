pragma solidity ^0.8.0;
contract A1 {
    struct A {uint256 a; uint256 b; uint256 c;}
    function f(uint256 x) internal pure returns (A memory) {
        return A(x, x+1, x+2);
    }
    function g() public pure returns (uint256[] memory) {
        function f(uint x) internal pure returns (uint256 m) {
            m = x;
            return m;
        }
        uint256 x = 1;
        return [20,31,f(x),f(x+1),f(x+2)];
    }
}
