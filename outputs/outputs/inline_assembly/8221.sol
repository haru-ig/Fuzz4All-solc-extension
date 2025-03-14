pragma solidity ^0.8.0;
contract Mutated5 {
    uint256 public a;
    uint8 public b;
    uint16 public c;
    uint32 public d;
    uint64 public e;
    function decrease() public {
        a -= 10;
    }
    function decreaseOne() public {
        a -= 1;
    }
    function decreaseBoth() public {
        decrease();
        decrease();
    }
    function decreaseThree() public {
        decrease();
        decrease();
        decrease();
    }
    function decreaseFour() public {
        decrease();
        decrease();
        decrease();
        decrease();
    }
}
