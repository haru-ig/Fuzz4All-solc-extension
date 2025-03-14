pragma solidity ^0.8.0;
contract SemanticsEquivalence11 {
    struct Data { uint x1; uint x2; uint x3; uint x4; uint x5; }
    function run() public {
        data1.x1 = 42;
    }
}

contract FallbackFunction {
    uint internal data = 0;
    fallback() external pure returns (uint) {
            data = data + 1;
            return data;
    }
}
