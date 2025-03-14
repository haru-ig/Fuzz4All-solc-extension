pragma solidity ^0.8.0;
contract SemanticsEquivalence13 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function run() public {
        data.x1 = 2 * 2;
        data.x1 = 12 * 2;
        data.x2 = memorySize();
        data.x1 = data.x3;
        data.x1 = data.x2;
        data.x1 = data.x2;
    }
}
contract SemanticsEquivalence14 {
    function memorySize() public pure returns (uint) {
        uint[] memory numbers = new uint[](6);
        return numbers.length;
    }
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function run1() public {
        data.x1 = 2 + memorySize();
        data.x1 = 12 * memorySize();
        data.x2 = memorySize() + memorySize();
        data.x1 = data.x3;
        data.x1 = data.x2;
    }
}
contract SemanticsEquivalence15 {
    struct Data { uint x1; uint x2; uint x3; uint x4; uint x5; uint x6; }
    function run() public { }
    struct Extra { uint x1; uint x2; uint x3; uint x4; uint x5; uint x6; }
    Extra internal extra;
    function receiveExtra(uint w) public {
        Extra memory x = extra;
        extra.x1 = w;
        Extra memory y = extra;
        y.x1 += w;
        x.x6 = w * 6;
        x.x5 = dataSize();
        x.x6 = data.x6;
        if (210 > 150) data.x1 = data.x3;
        else data.x1 = data.x4;
    }
    function dataSize() public pure returns (uint) {
            uint[] memory numbers = new uint[](6);
            return
