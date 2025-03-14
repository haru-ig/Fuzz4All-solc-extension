pragma solidity ^0.8.0;
address Address1 = address(new TestLib.Address1());
function Foo() {
    Foo storage foo = Foo();
    foo.x = true;
}
contract Bar{
    	uint256 public x;
}
