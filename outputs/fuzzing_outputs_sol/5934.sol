pragma solidity ^0.8.0;
contract Mutate {
    function foo() public {
        uint storedValue = 2;
        storedValue = 3;
    }

    function noPayableFoo() public {
        NoPayable storage spender = NoPayable.storage();
        spender.foo();
    }

    function noPayableSetPayableFoo() public payable {
        NoPayable storage spender = NoPayable.storage();
        spender.foo();
    }

    function payableSetPayableFoo(uint newValue) public payable {
        WithPayable storage payableSpender = WithPayable.storage();
        payableSpender.setSomeValue();
    }
}
