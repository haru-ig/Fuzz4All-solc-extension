pragma solidity ^0.8.0;
contract Contract {
    function f() public pure returns(uint) {
        uint memory a;
        MemoryStore storage d = MyContract.storage;
        a = d.value;
        return a;
    }
    function g() public pure returns(uint) {
        uint memory a;
        MemoryStore storage d = MyContract.storage;
        d.value = 1000;
        return d.value;
    }
    function h(uint x) public pure returns(uint) {
        uint[3] memory a;
        MemoryStore storage d = MyContract.storage;
        a[0] = x;
        uint i;
        for(i = 1; i < 3; i++) {
            a[i+1] = x + 1;
        }
        d.value += a[0];
        return d.value;
    }
}
