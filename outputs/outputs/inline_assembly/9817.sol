pragma solidity ^0.8.0;
contract MutatorXulContract {
    constructor () {
    }
    function a(uint _a) public {
        delete _a;
        delete _b;
    }
    function setA() public {
        a(3);
        setA();
    }
    function setB() public {
        delete _a;
        b();
        setB();
    }
    function d(uint _a, uint _b) public {
        d(_a + _b);
        delete _c;
        setA();
        setB();
    }
    function e() public {
        delete _a;
        setA();
        setB();
        e();
    }
}
