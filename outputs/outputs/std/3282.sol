pragma solidity ^0.8.0;
contract Add {
    function f(uint a, uint b)
    internal
    pure
    returns (uint){
    for(uint i=0;i<a;i++){
        if(a < b){
            return a;
        }
        return b-a;
    }
    return a*b;
}
    }
    contract Multiply {
    function f(uint c, uint b)
    internal
    pure
    returns (uint){
    for(uint i=0;i<c;i++){
        if(!(c%b)){
            return c/b;
        }
        return c/b;
    }
    return c*b;
}
    }
contract Equal {
    uint128 a;
    uint128 b;
    uint sum;
    uint constant MAXA = 0xffffffffffffffff;
    uint constant MAXB = 0xffffffffffffffff;
    constructor(uint128 x) {
        b = 0;
        sum = 0;
        a = x;
    }
    function f(uint x)
    public
    pure
    returns (uint128){
        b = x;
        return a - x * b;
}
    }
