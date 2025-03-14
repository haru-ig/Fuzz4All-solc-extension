pragma solidity ^0.8.0;
library TestMutated6 {
    function foo() public pure returns (uint) {
    unchecked
        {
            return a;
        }
    }
    function bar() public pure returns (uint) {
        return foo();
    }
    function a() public pure {


        bar();
    }
}
