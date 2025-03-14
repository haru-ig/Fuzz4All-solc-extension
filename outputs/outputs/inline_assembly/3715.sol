pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {

  struct StructWithNoInit {
    uint256 a1;
    uint256 b1;
    uint256 c1;

    function StructWithNoInit() {
        a1 = 10;
        b1 = 4;
    }

    function setA(uint256 v1) {
        a1 = v1;




    }

    function getA() view public returns(uint256) {
        return a1;
    }

    function setB(uint256 v1) {
        b1 = v1;




    }

    function getB() view public returns(uint256) {
        return b1;
    }
  }

  uint256 constant constantValue = 125;



  function e() public {
    StructWithNoInit memory value1 = StructWithNoInit();
    StructWithNoInit memory value2 = StructWithNoInit();

    value1.setA(10);

    uint256 int1 = value1.getA();

    value2.setA(4);

    uint256 int2 = value2.getA();

    value1.setB(25);

    uint256 int3 = value1.getB();

    value1.setA(5);

    uint256 int4 = value1.getA();
  }
}
