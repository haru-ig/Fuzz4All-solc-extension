pragma solidity ^0.8.0;

contract A is B {
    uint[] public b;
    function g() public {
        b.length;
    }
}
pragma solidity ^0.8.0;
contract B is contract A {
    uint[] public b;
    constructor() public {}
}
contract C {
    function f() public view returns(uint) {
        return b.length;
    }
}
contract D is C {
    function g() public {
        b.length;
    }
}
contract E is D {
    function h() public view returns(uint) {
        return b.length;
    }
}
contract F is D {
    function i() public view returns(uint) {
        return b.length;
    }
}
contract CExample {

    uint[] s1 = new uint[](2);




    uint[] s2 = s1;
    A a1;
    B b1;






    bool ok1;
    E e1;
    F f1;

    function f() public {
        b1.g();
    }

    function j() public {
        a1;



        f1.i();
    }
