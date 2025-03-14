pragma solidity ^0.8.0;
contract Test98 {
    function f() public pure returns (int[] memory memory){
        array memory a;
        a[2] = 2;
        return a;
    }
    function g() public pure returns (int[3] memory memory) {
        int calldata[] = { 1, 2 };
        array memory a;
        a[2] = 2;
        return a;
    }
}
