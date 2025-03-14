pragma solidity ^0.8.0;
contract D {
    uint x;
    receive() external payable {
        x++;
    }
}
contract E {
    uint x;
    receive() external payable {
        x++;
    }
    function callFallback() external {
        x++;
    }
}

pragma solidity ^0.8.0;
contract F {
    uint public x;
}
contract G {
    uint x;
}
contract H {
    uint public x;
}
contract I {
    uint public x;
}
contract J {
    uint public x;
    constructor() external {
        x = 7;
    }
}
contract K {
    uint public x;
    function () external payable {
        x = 15;
    }
}
contract M {
    uint x;
    uint public constant f = 10;
    constructor() external {
        x = 25;
    }
    function() external payable {
        x -= 10;
    }
}
contract N {
    uint x;
    uint constant f = 10;
    constructor() external {
        x = 25;
    }
    function () external payable {
        x -= 2;
    }
}
contract O {
    receive() external payable {
    }
    function callFallback() payable external {
    }
}
contract P {
    receive() external payable {
        x--;
    }
    function() payable external {
        x--;
    }
}
contract Q {
    receive() external payable {
        x++;
    }
    function () payable external {

    }
    function () external {

    }
}
