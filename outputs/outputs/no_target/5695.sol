pragma solidity ^0.8.0;
contract Baz3 {
    function bar(address payable foo) public returns (bytes memory) {
        return foo.send(0.34);
    }
}
contract Foo {
    function f() public pure {
        Baz2 var1 = new Baz2();
        var1.a;
        Baz3 var2 = new Baz3();
        var2.bar.value(0.25)();
    }
}
