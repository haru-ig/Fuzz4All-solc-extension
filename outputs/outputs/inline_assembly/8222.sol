pragma solidity ^0.8.0;
contract Mutated5 {
    uint256 public a;
    uint b;
    uint c;
    uint d;
    uint e;
    function decrease() public {
        a--,b--,c--,d--,e--;
    }
    function decreaseOne() public {
        a--; b--; c--; d--; e--;
    }
    function decreaseBoth() public {
        decrease(),decrease();
    }
    function decreaseThree() public {
        decrease(),decrease(),decrease();
    }
    function decreaseFour() public {
        decrease(),decrease(),decrease(),decrease();
    }
}
