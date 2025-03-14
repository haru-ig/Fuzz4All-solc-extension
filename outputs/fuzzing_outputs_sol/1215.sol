pragma solidity ^0.8.0;
contract SemanticsEquivalence11 {
    struct Data { uint x1; uint x2; uint x3; }
    function run() public {
        data.x1 = data2.x1 * 6;
        data.x2 = data3.x2 + data4.x1;
        data3 = memorySize();
        data.x1 = data2.x1;
        data2 = data.x1;
        data.x2 = data3.x2;
        data4.x1 = 1 as uint;
        data.x3 = data2.x1 * data.x1;
        data.x1 = data2.x1 * data.x1;
        data.x1 = data2.x2;
        data.x1 = data3.x2;

        data3 = data.x1 + data2;
        data2 = data.x2;
        data3 = data.x2;
        data.x1 = data.x2;
        data2 = memorySize();
        data.x1 = 12 * data.x1;
        data.x2 = data1.x1 * data3.x1;
        data.x3 = data1.x1 / data.x1;
        data.x1 = data3.x1 + data4.x1;
        data.x1 = data4.x1;
        data.x1 = data3.x1 + data.x3;
        data3 = data.x1;
        data.x1 = data2.x2 + data2.x1;
        data.x1 = data.x2;
        data.x1 = data4.x1;
        data.x1 = data4.x1;
        data1.x1 = data1.x1 * data.x1;
        data.x3 = data1.x2 * data.x1;
        data1.x1 = data3.x1;
    }
    struct MyData { uint x1; uint x2; uint x3; }
    MyData internal data1;
}
