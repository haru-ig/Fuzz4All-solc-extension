pragma solidity ^0.8.0;
contract mutation1 {
    mutation2 private a;
    function foo() public {
        a.m();
    }

}
