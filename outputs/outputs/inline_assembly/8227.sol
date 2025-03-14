pragma solidity ^0.8.0;
contract EquivalentMethod {
    uint8 a;
    uint8 b;
    uint16 c;
  uint32 d;
  uint64 e;
    event EventA(uint a);
    function decrease() public {
      a -= 10;
      emit EventA(a);
    }
    function decreaseOne() public {
      a -= 1;
      emit EventA(a);
    }
    function decreaseBoth() public {
      decrease();
      decrease();
      emit EventA(a);
    }
    function decreaseThree() public {
      decrease();
      decrease();
      decrease();
      emit EventA(a);
    }
    function decreaseFour() public {
      decrease();
      decrease();
      decrease();
      decrease(); }
}

contract EquivalentMethod {
    uint256 a;
    uint8 b;
    uint16 c;
  uint32 d;
  uint64 e;

    modifier decrease() {
        a -= 20;
        _;
    }


    event EventA(uint a);

    function decreaseA() public {
        a -= 20;
        emit EventA(a);
    }

    function decreaseOneA() public {
        a -= 1;
        emit EventA(a);
    }

    function decreaseBothA() public {
        decrease();
        decrease();
        emit EventA(a);
    }

    function decreaseThreeA() public {
        decrease();
        decrease();
        decrease();
        emit EventA(a);
    }

    function decreaseFourA() public {
        decrease();
        decrease();
        decrease();
        decrease();
        emit EventA(a);
    }
}

contract EquivalentMethod {
    uint32 a;
    uint8 b;
    uint16 c;
  uint32 d;
  uint64 e;


    modifier decrease() {
        a -= 30;
        _;
    }

    modifier decrease1() {
        a -= 1;
        _;
    }

    event EventA(uint16 a);

    function decreaseA() public {
        a -= 30;
        emit EventA(a);
    }

    function decreaseOneA() public {
        a -= 1;
        emit EventA(a);
    }

    function decreaseBothA() public {
        decrease();
        decrease();
        emit EventA(a);
    }

    function decreaseThreeA() public {
        decrease();
        decrease();
        decrease();
        emit EventA(a);
