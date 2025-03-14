pragma solidity ^0.8.0;
contract MutateWipeBc7 {
    function _next() public pure returns (uint) {
        return;
    }
}
contract Test {
    address _myAddress;

    function test() public {
        address a = address(0);
        if (a >= address(1) || address(42) <= address(0)) {
            Test t = new Test();
            a = t;
        }
    }
}
