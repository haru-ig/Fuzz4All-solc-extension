pragma solidity ^0.8.0;
contract C {
    uint public z;
    uint public x;
    constructor() public {
        x = 3;
    }
    function test() public {
        z = 4;
        x += 3;
    }
}

pragma solidity 0.8.0;
contract C {
    uint public z;
    uint public x;
    constructor() public {
        x = 3;
    }
    function test() public {
        z = 4;

    }
}
