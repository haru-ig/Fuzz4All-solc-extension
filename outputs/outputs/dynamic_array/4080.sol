pragma solidity ^0.8.0;
contract C {
    struct TestData { uint[10] public data; uint[9] public data2; }
    TestData public data1;
    uint[] public data2;
    function f() public {
        data1.data1 = data1;
        data2[0] = data2;
        data1.data = data2;
        data2[data1.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data.data] = data2;
    }
}
