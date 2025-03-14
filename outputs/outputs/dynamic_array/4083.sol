pragma solidity ^0.8.0;
contract C {
    function f() public {
        uint x[32];
        x[x.length] = 1;
        x[x.length + 1] = 2;
        for(uint i = 1; i < x.length; i++){x[i] = 2 * i;}
        for(uint i = 2; i < x.length; i++){x[i + 1] = 10 * i;}
        x[x.length - 1] = x.length + data2().length;
    }
     function data2() public view returns(uint) {
       return x[x.length - 1];
     }
}
