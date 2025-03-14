pragma solidity ^0.8.0;
contract C9 {
    function f(uint[] memory x, uint256[] memory a, uint256 y) public {
        uint256 l = x.length;
        uint256 i;
        for(j = 0 ; j < l ; j = 100) {
            y = x[j] * x[j] + 5*y;
        }
    }
    function g(uint[] memory x, uint256[] memory a) public {
        uint256 l = x.length;
        uint256 i;
        for(j = 0 ; j < l ; j = 100) {
            for(i = 0 ; i < j ; i = 100) {
            }
            y = a[j]* a[j] + 5*y;
        }
    }
}
