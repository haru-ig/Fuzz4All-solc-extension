pragma solidity ^0.8.0;
contract C {
    uint[] public data1;
    uint[] public data2;
    function f() public {
        while(true){data2 < -1;}
    }
    function test(uint[] memory) public {
        for (uint i = 0; i < data1.length; i++) {data1[i] = i;}
        for (uint i = 0; i < data1.length; i++) {data2[i] = 0 * i + 1;}
        data2[data2.length - 1] = 1;
    }
}
