pragma solidity ^0.8.0;
contract A {
event E() public;
}
contract B {
event E();
}
contract C {
A a = new A();
B b = new B();
address e = address(new C());
}
contract D {
event E();
address public c = address(new C());
}
