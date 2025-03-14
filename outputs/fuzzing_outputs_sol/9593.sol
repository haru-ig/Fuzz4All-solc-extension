pragma solidity ^0.8.0;
contract EtherModifier {
    function doSomething(uint) public {}
    uint i = 10;
    function doSomething() public {
        i = 40;
    }
}
contract Caller {
    function foo() public view returns (uint256) {
        return 42;
    }

    function bar() public view returns (uint) {
        uint256 x = foo();
        return i = 4 + 4 * x;
    }
}
