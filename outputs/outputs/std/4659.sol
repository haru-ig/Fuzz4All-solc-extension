pragma solidity ^0.8.0;
contract C {
    function foo() public pure returns (uint) {
        return g();
    }
}
pragma solidity ^0.8.0;
contract B {
    address payable a = new C();
    function f() public pure {
        a.transfer(g());
    }
}
