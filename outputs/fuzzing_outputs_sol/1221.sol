pragma solidity ^0.8.0;
contract SemanticsEquivalence11 {
    struct Data { uint x1; uint x2; uint x3; }
    Data public data1;
    function run() public {
        data1.x1 = 42;
        assembly {
            data1.x2 := mod(data1.x2, data1.x1)
            data1.x1 := data1.x1
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence12 {
    struct Data { uint x1; uint x2; uint x3; }
    Data public data1;
    function run() public {
        data1.x1 = 42;
        data1.x1.call.value(data1.x2)();
        data1.x1.call.value(data1.x2)();
        data1.x1.call.value(data1.x2)();
    }
}
