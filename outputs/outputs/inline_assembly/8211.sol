pragma solidity ^0.8.0;
contract Mutated2 {
    uint8 public a;
    uint256 public b;
    constructor(uint256 _b) public {
        a = 10;
        b = _b;
    }
    function decrease() public {
        b = b-10;
    }
    function decreaseTwo() public {
        b = b-1;
    }
    function decreaseThree() public {
        b = b-1;
    }
    function decreaseFour() public {
        b = b-1;
        b = b-1;
    }
}

pragma solidity 0.8.3;
contract Mutated1 {

    uint public a;
    constructor() public {
        a = 10;
    }

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

    function destruct() public {
        _;
    }

    function setA(uint val) public {
        assembly {
            a := val
        }
    }
}
