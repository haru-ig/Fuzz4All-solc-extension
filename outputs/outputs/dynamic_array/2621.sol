pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_mod{
    uint[] a;
    modifier mod1 {
        uint x = a[1]+1;
        uint y = a[2]+1;
        return (x==1 & y==1) | ((uint128(x-y)==1) & (x>=uint256(1)));
    }
    modifier mod2(uint y) {
        uint x = a[1]+y;
        uint y = a[2]+y;
        return (x==1 & y==1) | ((uint128(x-y)==1) & (x>=uint256(1)));
    }
    modifier mod3(uint z) {
        uint x = a[1]+z;
        uint y = a[2]+z;
        return (x==1 & y==1) | ((uint128(x-y)==1) & (x>=uint256(1)));
    }
    constructor () public {
        a[3]+=3;
    }
    function test() public {}
}
