pragma solidity ^0.8.0;
contract A is C {
    function f(uint[2] memory data) public returns(uint[2]) {
        uint[2] memory a = [1,2];
        if(data[1] == 2) {
            a[data[0]] = 2;
            return a;
        }
    }
}
