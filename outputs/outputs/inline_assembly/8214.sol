pragma solidity ^0.8.0;
contract Mutated4 {
    uint256 public a;
    uint128 public b;
    uint64 public c;
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
