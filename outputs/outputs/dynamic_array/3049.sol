pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V3 {
    uint[] public x;
    constructor () public {
        x = new uint[](2);
        x.push(x[1]);
        x.push(x);
    }
    function setPairs_V2(uint[] a) public {
        x[1] = a[2];
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    constructor () public {
        x.length = 2;
        x[0] = x[1];
        x[1] = x[1];
    }
}
contract SymbolicEquality_AssignmentModulation_V5 {
    uint[] public x;
    constructor () public {
        x = new uint[](0);
        x.push(x[1]);
        x.push(x);
        x.push(x[1]);
    }
    function test() public {
        uint s = 1 + 2;
        SymbolicEquality_AssignmentModulation_V2(x, s).setPairs_V2(new mypair[][](s), s);
    }
}
contract SymbolicEquality_AssignmentModulation_V6 {
    uint x;
    function setPairs_V2(uint[] a) public {
       x = a[2];
    }
    function a() public {
        SymbolicEquality_AssignmentModulation_V2(x, x).setPairs_V2(new mypair[][](x), uint(1));
    }
}
contract SymbolicEquality_AssignmentModulation_V7 {
    uint x;
    function setPairs_V2(uint[] a) public {
        x = a[2];
    }
    function b() public {
        uint a;
        uint b;
        SymbolicEquality_AssignmentModulation_V2(a, a).setPairs_V2(new mypair[][](a), uint(1));
        SymbolicEquality_AssignmentModulation_V2(b, b).setPairs_V2(new mypair[][](b), uint(1));
    }
}
contract SymbolicEquality_AssignmentModulation_V8 {
        uint[] public x;
        uint
