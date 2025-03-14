pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
    constructor() public {
        x = 3;
        x = x / 2;
        z = x == 0? z + 1:z;
        x = x * 4;
    }
    function test() public {
        z = 4;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
    constructor() public {
        x = 3;
        x = x / 2;
        z = z + 1;
        x = x * 4;
    }
    function test() public {
        z = 4;
    }
}
