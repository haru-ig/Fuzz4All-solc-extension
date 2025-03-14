pragma solidity ^0.8.0;
contract MutatorOld {
    uint public a;
    struct TestUnion {
        uint a;
        uint b;
        uint c;
    }
    TestUnion memory t;
    function setA(uint x) public {
        t.a = x;
      }
    function increaseA(uint x) public {
        t.a = t.a + x;
    }
    function increaseB(uint x) public {
        t.b = t.b + x;
    }
    function setB(uint x) public {
        t.b = x;
      }
    function subtractA(uint x) public {
        t.b = t.b + x;
    }
    function subtractB(uint x) public {
        t.a = t.a - x;
    }
    function multiplyB(uint x) public {
        t.a = t.b * x - x;
    }
    function checkResult() public view returns(uint) {
        return t.a;
    }
}
