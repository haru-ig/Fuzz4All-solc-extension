pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_mod2{
    uint[] a;
    function test() public returns(uint[] memory) {
        a[1]+=1;
        a[2]+=1;
        a[2]+=1;
        for(uint256 i=0;i<a.length;i++){
            a[i]=a[3];
        }
        return a;
    }
}
