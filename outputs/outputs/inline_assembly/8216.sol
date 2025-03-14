pragma solidity ^0.8.0;
contract Mutated5 {
    uint50 public a;
    uint300 public b;
    uint150 public c;
    function decrease() public {
        a = a-10;
    }
    function decreaseOne() public {
        a = a-1;
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
