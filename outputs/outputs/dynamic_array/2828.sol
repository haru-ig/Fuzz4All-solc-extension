pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations2 {
    uint[5] public x;
    function fct (uint[5] memory x) public {
        x[0] = x[10];
        x[3] = x[0];
        x[1] = x[0];
        i = x[0];
        x[0] = i + 100 * x[4];
        x[3] = x[3] + 100 * x[4];
        x[1] = x[3] + i;
        x[0] = x[0] + x[4];
        x[3] = x[1] + i;
        x[1] = x[3] + x[3];
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations3 {
    uint[5] public x;
    uint[4] public y;
    uint[3] public z;
    uint[2] public a;
    uint[1] public b;
    uint[2] public c;
    uint[1] public d;
    uint[1] public e;
    uint[1] public f;
    mapping (uint => uint) internal a0;
    mapping (uint=>uint) internal b0;
    mapping (uint=>uint) internal c0;
    mapping (uint=>uint) internal d0;
    mapping (uint=>uint) internal e0;
    mapping (uint=>uint) internal f0;
    function fct (uint[3] memory x) public {
        y = x;
        y.push(0x1c);
        x.push(0xbe);
        x.push(0x77);
        x.push(0x94);
        x.push(0x68);
        x.push(0xa4);
        x.push(0xa7);
        a.push(0x8c);
        a.push(0x4d);
        if(x[0]!= 0xffffffff)
            x[1] = x[1] + x[0];
        if(x[1]!= 0xffffffff)
            x[2] = x[2];
        a0[x[1]] = 0;
        b0[x[1]] = x
