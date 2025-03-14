pragma solidity ^0.8.0;
contract SemanticsEquivalence12 {
    struct Data { uint x1; uint x3; }
    Data internal data1;
    Data internal memoryData2;
    function run() public {
        data1.x1 = 42;
        data1.x1 = 2 * 3;
        data1.x1 = data1.x3;
        data1.x1 = data1.x2;
        data1.x1 = 2 ** 3 - 1;
    }
    function memorySize() public pure returns (uint) {
        uint[] memory numbers = new uint[](6);
        return numbers.length;
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence {
    struct Data { uint x1; uint x2; uint x3; uint x4; }
    Data internal data1;
    function run() public record {
        call1();
        call2();
        call3();
        call4();
        memory1();
    }

    function call1() public pure returns (uint) {
        uint[] memory numbers = new uint[](2);
        uint[] memory result = new uint[](3);
        uint[] memory result2 = new uint[](4);
        uint[] memory result3 = new uint[](3);
        result3[0] = 0;
        result3[1] = 0;
        uint[] memory result4 = new uint[](3);
        uint[] memory result5;
        uint[] memory result6;
        uint[] memory result7;
        uint[] memory result8;
        result2[0] = 0;
        result2[1] = 0;
        result2[2] = 0;
        result[0] = 1;
        result[1] = 2;
        result[2] = 3;
        numbers[0] = 2;
        for { result7[2] > 0 } {
            result7[0] = uint(result7[0]) + uint2(result7[1]);
            result7[1] = 2 * result7[2];
            if (result7[1] > result7[2]) {
                result7[0] -= result7[1] - result7[2];
                result7[1] = result7[2];
            }
            if (result7[0] == 0) break;
        }
        uint[] memory result9 = new uint[](3);
        result[2][5] = data1.x1;
        for (uint i = 0; i <= 5; i++) {
            result2[3
