pragma solidity ^0.8.0;
contract SemanticSolidityPointers3 {
    dynamic int32[] a1;
    dynamic int32[] a2;
    int32[] b;
    function test() pure public returns(int32 [][] memory) {
        int32[][] memory r;
        r = [a1, a2];
        a1 = [1, 3];
        b.push(3);
        return r;
    }
}
