pragma solidity ^0.8.0;
contract MixedContactsExample082 {
    uint public constant test = 42;
    uint x;
    uint y;
    function foo() public {
        uint(y);
    }
    constructor() {
        uint(x);
        x;
        x;
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample083 {
    uint public constant test = 42;
    uint x;
    uint y;
    function foo() public {
        uint(y);
        y;
        y;
    }
    constructor() {
        uint(x);
        x;
        x;
        x;
    }
}
contract MixedContactsExample084 {
    uint public constant test = 42;
    uint x;
    uint y;
    function foo() public {
        uint(y);
        y;
        x;
    }
    constructor() {
        uint(x);
        x;
    }
}
