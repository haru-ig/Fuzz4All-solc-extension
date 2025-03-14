pragma solidity ^0.8.0;
contract modifierE{
    function h(uint x) pure public returns (uint) {
        uint  y;
        return uint(y) + x + 0.0;
    }
}
contract myContractE is modifierE
{
    uint a;
    function h(uint x) pure public returns (uint) {
        uint y;
        (a,y) = (uint(x),uint(y));
        return y;
    }
}
