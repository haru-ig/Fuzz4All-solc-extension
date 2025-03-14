pragma solidity ^0.8.0;
contract Maths {
    function sum(uint64[] memory a) public pure returns (uint64) {
        uint64 res = 0;
        for (uint i = 0; i < a.length; i++) res += a[i];
        return res;
    }


    function sum2(uint64[] memory a) public pure returns (uint64){
        return sum(a);
    }


}
