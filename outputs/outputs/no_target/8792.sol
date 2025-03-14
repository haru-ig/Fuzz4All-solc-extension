pragma solidity ^0.8.0;
interface FooInterface3{
    function method3() public returns (uint x, uint result);
}
contract BarInterface {
    function method2() public returns (uint result);
}
contract C is BarInterface, FooInterface3{
    function method1() public returns (uint result);
}
contract FooInterface {

}
contract I {
    contract FooInterface {}
    contract BarInterface {}
    contract C { }
}
contract C2 is I {
    function method1 () public returns (uint x);
}
contract A {
    function foo () public returns (uint x) {
        (uint a) = x;
        (uint b, uint c) = x;
        (uint d) = (a, 300);
        (uint e, uint _) = x;
    }
}
contract B {
    function B (foo_interface foo_) public { }
}
contract C {
    function test (foo_interface foo_) public returns (uint) {
        (uint) = foo_;
        (uint) = foo_;
        (uint _foo__) = foo_;
    }
}
contract D {
    function foo (b_interface b_) public returns (uint) {
        (uint) = b_;
        (uint) = b_;
        foo_interface _foo___;
        (_foo__) = b_;
    }
}
