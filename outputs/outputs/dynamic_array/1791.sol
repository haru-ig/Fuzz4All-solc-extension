pragma solidity ^0.8.0;
interface C {
    function test() external returns (uint);
    function foo() external;
    function bar() external;
}
contract OverridingDynamicArraySizeWithCalls {
    function callNonFixedNoCopy(C c) public returns (uint) {
        return c.test();
    }
    function callNonFixed(C c) public returns (uint) {
        return c.test();
    }
    function callFixedValues(uint value1, uint value2) public returns (uint) {
        return value1 + value2;
    }
}
