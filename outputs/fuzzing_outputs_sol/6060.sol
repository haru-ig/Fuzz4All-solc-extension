pragma solidity ^0.8.0;
contract EtherTesterMutated {
    function f() public payable {}
    receive() external payable {}
}
contract EtherTester {
    function g() public {
        f();
        g();
        g();
    }
}
