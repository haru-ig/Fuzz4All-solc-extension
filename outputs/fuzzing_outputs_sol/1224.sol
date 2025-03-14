pragma solidity ^0.8.0;
contract SemanticsEquivalence11 {
    struct Data { uint x1; uint x2; uint x3; }
    function run() public { }
    struct Extra { uint x1; uint x2; uint x3; }
    Extra internal extra;
    function receiveExtra(uint w) public {
        Extra memory x = extra;
        extra.x1 = w;
        Extra memory y = extra;
        y.x1 += w;
        x.x3 = 210;

        x.x1++;
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence12 {
    function memorySize() public pure returns (uint) {
        uint[] memory numbers = new uint[](6);
        return numbers.length;
    }
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function run1() public {
        data.x1 = memorySize();
        data.x2 = memorySize();
        data.x2 = 12 * 3;
        data.x1 = data.x3;
        data.x1 = data.x2;
    }
}
