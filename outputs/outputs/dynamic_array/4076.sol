pragma solidity ^0.8.0;
contract C2 {
    function f() public {
        uint[] memory d1 = new uint[](1); d1[0] = 1;
        uint[] memory d2 = new uint[](d1.length + 1); d2[d1.length - 1] = 1;
        for(uint i = 0; i < d1.length; i++){d2[i] = 10 * i;}
        for(uint i = 0; i < d1.length; i++){d2[i + 1] = 10 * i + 1;}
        d2[d1.length - 2] = 1 + d2.length;
    }
}
