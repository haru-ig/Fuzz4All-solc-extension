pragma solidity ^0.8.0;
contract Test {
    uint[8] a;
    uint[8] b;
    function f(uint x) public view returns (uint) {
        return 0;
    }
    function sum() public view returns (uint) {
        return 0;
    }
    function findMin(uint[] memory a, uint m, uint[] memory b) public view returns (uint min) {
        min = 0;
        for(uint i = 0; i< 8; i++) {
            min = min + a[i];
        }
        for(uint j = 0; j<32; j++) {
            if(b[j] <= 31 && a[m] <= a[j]) {
                if(b[j] < a[j]) {
                    min--;
                }
            }
        }
        return min;
    }
