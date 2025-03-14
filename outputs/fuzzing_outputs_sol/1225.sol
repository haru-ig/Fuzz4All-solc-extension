pragma solidity ^0.8.0;
contract SemanticsEquivalence13 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    uint internal oldDataLength;
    function run1() public {
        data.x1 = 2;
        data.x1 /= oldDataLength;
        data.x2 /= oldDataLength;
        data.x2 *= oldDataLength;
    }
}
contract SemanticsEquivalence14 {
    struct DataWithOverloadedFunction { uint x1; uint x2; uint x3; }
    function run() public {
        DataWithOverloadedFunction calldata oldData = msg.data;
        new DataWithOverloadedFunction(oldData.x1, oldData.x2, 0);
        DataWithOverloadedFunction calldata newData = msg.data;
        newData.x1 *= oldData.x2;
        newData.x2 += oldData.x1;
    }
}
contract SemanticsEquivalence15 {
    struct DataWithVeryBigNumber { uint x1; uint x2; uint x3; }
    DataWithVeryBigNumber internal data;
    DataWithVeryBigNumber calldata oldData = msg.data;
    DataWithVeryBigNumber calldata newData;
    function run() public {
        newData = data;
        newData.x1 *= oldData.x2;
        newData.x2 += oldData.x1;
    }
}
contract SemanticsEquivalence16 {
    struct DataWithVeryBigNumber { uint x1; uint x2; uint x3; }
    DataWithVeryBigNumber internal data;
    uint constant bigNum1 = 1e255;
    uint constant bigNum2 = 10e18;
    function run1() public {
        uint num = bigNum1 + bigNum2 / 1000;
        uint newValue = 1000 * num;
        data.x1 *= new uint(newValue);
    }
    function run2() public {
        uint newValue, num;
        num = bigNum1 * bigNum2 / 100
