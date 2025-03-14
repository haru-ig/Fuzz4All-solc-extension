pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    uint public y;
    uint public zy;

    function foo() public {
        x = 3;
        y = w;
        x = x - 1;
        x = x * 5;
        z = 2 + 4 * x;
        w = w * 8;
        y = y * 2;
        ky = 1000;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;

    uint public y;

    function foo() public {
        x = 3;
        z = 2 + 3 * x;
        y = 3;
        z = y + 3 * x;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public w;

    uint public y;
    uint public zy;

    address owner;

    constructor () public {
        x = 3;
        y = w;
        z = 2 + 3 * x;
        owner = msg.sender;
        w = w * 8;
        uint newOwner = msg.sender;
        x = 0;
        x = x;
        x = 1;
        x = x + 1;
    }

    function transfer (uint amount) public {
        owner.transfer(amount);
        assertEq(address(this).balance, 0);
    }
}
