pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    Data() {
        data.x3 = data.x1 + data.x2;
    }
    function run() public {
        uint v = 32;
        data.x3 = data.x1 + v;
    }
}
contract SemanticsEquivalence7 {
    struct StructA { uint x; }
    struct StructB { uint y; }
    struct StructC { uint z; }
    StructA internal structA;
    StructB internal structB;
    StructC internal structC;
    struct StructD { uint w; }
    function run() public {
        structD data;
        StructC.Memory storage memory = data.structC.memory;
        structC.Memory storage memory2 = data.structC.memory;
        StructC.Memory storage memory3 = structC.memory;
        StructC.Memory storage memory4 = structC.Memory();
    }
    StructD internal data;
}
