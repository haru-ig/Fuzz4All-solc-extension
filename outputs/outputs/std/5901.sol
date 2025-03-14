pragma solidity ^0.8.0;
contract SemanticEvidentChanges3 {
    uint8[8] a;
    function f() public {
        a[0]=1;
        a[1^uint256(x)&8] += 1;
        a[2]=3;
        a[4]=5;
        a[4*uint256(x)*3*2^1^uint256(x)/uint256(x)] += 8;
    }
}
