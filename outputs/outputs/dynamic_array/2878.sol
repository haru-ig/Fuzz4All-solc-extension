pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations {
    uint i;
    uint j;
    uint v;
    uint f(uint[4] memory h) public pure {
        return h[0];
    }
    function mf(uint[] memory h) public pure {
        return i;
    }
    function a(uint[16] memory h) public pure {
        v;
        j;
        i;
        fct(h);
        mf(h);
    }
    constructor () public {}
    function fct(uint[] memory h) public {
        i;
        j;
        v;
        callDataInit(h,i);
    }
    function mf(uint[25] memory h) public {
        callDataInit(h,j);
    }
    function callDataInit(uint[5] memory h,uint[1] memory i) public {
        require(i!= 1);
    }
}
