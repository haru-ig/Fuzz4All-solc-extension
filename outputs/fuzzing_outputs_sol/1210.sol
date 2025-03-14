pragma solidity ^0.8.0;
contract SemanticsEquivalence10 {
    struct Data { uint x1; uint x2; uint x3; }

    Data memory data = Data(1, 2, 3);
    data.x1 = 12;
    function mutatedRun() public {
        data.x2 = 24;
        data.x3 = 6 * 2;
    }
    uint internal getMemorySize() public pure returns (uint) {
        uint[] memory numbers = new uint[](6);
        memorySize;
        return numbers.length;
    }
}
