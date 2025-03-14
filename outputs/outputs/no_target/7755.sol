pragma solidity ^0.8.0;
contract Foo {
    function bar(Foo p_Foo) public pure {
        p_Foo.foo();
    }
}
contract Main {
    address p = 0x000000000000000000000000000000000000000;
    function main() public {
        Foo test = Foo{ value: p };
        test.bar();
    }
}
