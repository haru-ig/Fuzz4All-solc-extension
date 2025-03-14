pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    struct X {
        uint256 field1;
    }
    struct A {
        X x1;
    }
    struct B {

    }
    B b;
    A a;
    B.X x2;
    B.X x3;
    function setXA(X x) public {
        a.x1.field1 = x.field1;
    }
    function getXA() public view returns(X.X x) {
        x = a.x1;
    }
    function setXAH(X.X x) public {
        a.x1.field1 = x.field1;
        a.x1.field1 = x.field1;
    }
    function getXAH() public view returns(X.X xH) {
        xH = a.x1;
    }
    function setXAF(X.X x) public {
        a.x1.field1 = x.field1;

    }
    function getXAF() public view returns(X.X xH) {
        xH = a.x1;

    }
    function getXAFC() public view returns(X.X h,uint256 p1) {
        h = a.x1;
        p1 = a.x1.field1;
    }
}
