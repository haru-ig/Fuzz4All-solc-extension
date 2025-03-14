pragma solidity ^0.8.0;
contract MutateExample {
    uint256 public immutable number = 5;
    address a = 13;
    constructor() {
    }
    function hello() public {
        uint256 number = 13;
        uint8 y = 9;
        number = 5;
        a = 3;
        number = 1;
        a = a;
        a = 3;
    }
}
contract RemoveExample {
    uint256 public immutable number = 5;
    address a = 5;
    constructor() {
    }
    function hello() public {
        uint256 number = 5;
        number = 3;
        number = 1;
    }
}
contract Multi {
    uint256 public immutable number = 183;
    uint8 public immutable number8 = 42;
    address public immutable address0 = 13;
    address public immutable address1 = 27;
    bool public immutable boolean = true;
    constructor() {
    }
    function hello() public {
        uint8 number8 = 14;
        uint256 number256 = 15;
        number = number256;
    }
}

pragma solidity ^0.8.0;
contract MutateExample {
    uint256 public immutable number = 0;
    constructor() {
    }
    function hello() public {
        address address0 = 13;
        address address1 = 0x000000000000000000000000000000000000000000000000000000000000000;
        address address2 = 0x0000000000000000000000000000000000000000000000000000000000000000;
        number = 3;
        address0 = 3;
        address1 = 3;
        address2 = 3;
    }
}
