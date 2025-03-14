pragma solidity ^0.8.0;
contract C is D {
    constructor() public {
        names = 0;
    }
    uint public names;
    function addName() public returns (uint name) {
        names ++;
    }
}

contract D is C {
    function addName() public returns (uint name) {
        name = 10;
    }
}

pragma solidity ^0.8.0;
contract E {
    uint public x = 2;
    function add(uint x) public {
        x = x + 1;
    }
}

contract F is E {
    constructor() public {
    }
    uint public x;
    function add2(uint x) public {
        x = 2;
    }
    function add4(uint x) public {
        x = x + 2;
    }
}

pragma solidity ^0.8.4;
contract G {
    uint public x;
    constructor() public {
        x = 630;
    }
    function multiply() public {
        x /= 100;
    }
    function multiply2() public {
        x *= 100;
    }
    function multiply3() public {
        x ^= 100 + 1000;
    }
    function divide() public {
        x /= 1000000000;
    }
    function divide2() public {
        x /= 100000;
    }
    function divide3() public {
        x /= 1000;
    }
    function add() public {
        x += 100;
    }
    function add2() public {
        x += 200;
    }
    function subtract() public {
        x -= 100;
    }
    function subtract2() public {
        x -= 500000000;
    }
    function subtract3() public {
        x -= 900000000000000000;
    }
}
