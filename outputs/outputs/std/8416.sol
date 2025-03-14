pragma solidity ^0.8.0;
contract ArrayMutations {
    ArrayMutationsAis6An payable A;
    ArrayMutationsAis6An payable B;
    address[] private people;
    ArrayMutationsAis6An public payable c;
    ArrayMutationsAis6An public payable d;
    ArrayMutationsAis6An public payable e;
    ArrayMutationsAis6An public payable a;
    ArrayMutationsAis6An public payable b;
    function setA() public {
        A.setA(0);
        B.setA(1);
        c.setA(2);
        d.setA(3);
        e.setA(4);
    }
    function getA() public returns (uint) {
        return A.getA();
    }
    function setB() public {
        B.setA(1);
        B.setA(0);
        B.setA(4);
        c.setA(0);
        c.setA(1);
        d.setA(1);
        d.setA(3);
        e.setA(2);
        e.setA(5);
    }
    function getB() public returns (uint) {
        return B.getA();
    }
    function setC() public {
        c.setA(2);
        c.setA(1);
        c.setA(0);
        c.setA(4);
        d.setA(0);
        d.setA(4);
        d.setA(1);
        e.setA(2);
        e.setA(0);
        e.setA(4);
    }
    function getC() public returns (uint) {
        return c.getA();
    }
    function setD() public {
        d.setA(0);
        d.setA(3);
        d.setA(1);
        e.setA(2);
        e.setA(0);
        e.setA(4);
    }
    function getD() public returns (uint) {
        return d.getA();
    }
    function setE() public {
        e.setA(0);
        e.setA(4);
        e.setA(2);
        e.setA(5);
    }
    function getE() public returns (uint) {
        return e.getA();
    }
    function setA(uint x) public {
        a.setA(0);
        a.setA(x);
    }
    function getA() public returns (uint a) {
        return a.getA();
    }
    function setB(uint x) public {
        b.setA(0);
        b.setA(x);
    }
    function getB() public returns (uint b) {
        return b.getA();
    }
}

pragma solidity ^0.8.0;
contract ArrayMut
