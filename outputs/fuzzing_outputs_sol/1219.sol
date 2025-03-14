pragma solidity ^0.8.0;
contract SemanticsEquivalence10{
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    function run() public view returns (uint memorySize) {
        data1.x1 = 42;
        data1.x2 = memorySize();
        data1.x2 = data1.x3;
        data1.x1 = data1.x3;
        data1.x1 = data1.x2;
        memorySize = memorySizeValue();
    }
    uint public memorySizeValue() public pure returns (uint) {

        uint[] memory numbers = new uint[](6);
        return numbers.length;
    }
}


pragma solidity ^0.8.0;
contract SemanticsEquivalence10_Two{
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    function run() public view returns (uint memorySize) {
        data1.x1 = memorySizeValue();
        data1.x2 = memorySize;
        data1.x2 = data1.x3;
        data1.x1 = data1.x3;
        data1.x1 = data1.x2;
        memorySize = memorySizeValue();
        memorySize = memorySizeValue;
    }

    uint public memorySizeValue() public view returns (uint) {

        uint[] memory numbers = new uint[](6);
        return numbers.length;
    }
}
