pragma solidity ^0.8.0;
contract C {
    uint[] internal data2;
    function f() public {
        require(data2.length == 0);
        data2 = new uint[](1);
        data2[0] = 1;
        data2.length = 1;
        for(uint i = 0; i < data2.length; i++){data2[i] = 10 * i;}
        for(uint i = 0; i < data2.length; i++){data2[i + 1] = 10 * i + 1;}
        data2.length = 2;
        data2[1] = 1 + data2.length;
    }
}
