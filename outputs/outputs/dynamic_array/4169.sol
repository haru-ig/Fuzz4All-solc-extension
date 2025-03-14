pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E;
    uint x;
    function f() public {
        E += 1;
        c = 1;
        x = 1;
    }
}
contract E {
    uint public c;
    uint public E;
    uint x;
    function f() external {
        E += 1;
        c = 1;
        x = 1;
    }
}
contract E {
    uint public c;
    uint public E;
    uint x;
    function f() public {
        c = 1;
        E += 1;
        x = 1;
    }
}
contract E {
    uint public c;
    uint public E;
    uint x;
    constructor() public {
        E += 1;
        c = 1;
        x = 1;
    }
    function f() public {
        E += 1;
        c = 1;
        x = 1;
    }
}
