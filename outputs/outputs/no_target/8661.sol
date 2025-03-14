pragma solidity ^0.8.0;
contract A {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
contract B {
    function f(A a) public pure returns (uint) {
        return a.add(0);
    }
    function call(A a, uint x) public pure returns (uint) {
        return a.add(x);
    }
}
contract Main
{
    function run() public pure {
        B b = new B();
        uint x = b.f(new A());
        uint y = b.f(A(0));
        uint z = b.call(new A(), x);
    }
}
