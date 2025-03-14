pragma solidity ^0.8.0;
contract Mutating {
    function f1() public {
        H h = new H();



    }
}
contract Mutated {
    uint256 constant X = 1;
    function f1() public {
        H h = new H();
        h.x = X;
        myInt = 1.1;


    }
}
contract Mutated2 {

    bytes1 constant X = 0xab;
    mapping(bytes1 => uint256) xValue;

    constructor() {
        xValue[X] = 1;
        myInt = 1.1;
    }

    function f1() public {
        bytes1 w = X;

        if (xValue[w] == 1) {
          myInt = 0;
        }
    }
}
contract Mutated3 {

    bytes1 X;
    mapping(bytes1 => uint256) xValue;

    constructor(bytes1 _x) public {
        X = _x;
        xValue[X] = 1;
    }

    function f1() public {
        bytes1 w = X;
        uint256 w = xValue[w];
        if (w == 1) {
          myInt = 0;
        }
    }
}
contract Mutated4 {
    uint constant X = 1;
    uint private A = 0xFFFFFFFFFFFFFFFFF;

    function f1() public {
        A = X;
        A = A + 10;
        if (A == 0) {
          myInt = 0;
        }
    }
}
