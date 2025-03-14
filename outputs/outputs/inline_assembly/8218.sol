pragma solidity ^0.8.0;
contract Mutated7 {
    uint256 public a;
    string public b;
    uint64 public c;
    function decrease() public {
        a = a-10;
        b = "newString";
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
