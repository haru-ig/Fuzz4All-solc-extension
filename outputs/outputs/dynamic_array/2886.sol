pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations20 {
   uint[5] a;
    uint[5] b;
    uint[5] c;
    uint[5] d;
    uint[5] e;
    uint[5] f;
    uint i;
   bytes2 k;
    constructor () public {
        uint l;
        uint h;
        l = 56462234;
        h = (l + 66635135) * 66669;
        a[4] = l - h;
    }
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234;
        h = (l + 66635135) * 66669;
        a[4] = l - h;
    }
    function fct2() public returns (uint[5] memory h) {
        uint l;
        uint h;
        l = 56462234;
        h = (l + 66635135) * 66669;
        a[4] = l - h;
    }
    function fct3(uint[5 calldata] memory h) public {
        for (i=0; i<h.length; i++) {
            l = 56462234;
            h[i] = (l + 66635135) * 66669;
        }
        a[4] = a[4] - (i+1);
    }
    function fct4(uint[5 calldata] memory i) public {
        for (uint j=0; j<i.length; j++) {
            l = 56462234;
            i[j] = (l + 66635135) * 66669;
        }
