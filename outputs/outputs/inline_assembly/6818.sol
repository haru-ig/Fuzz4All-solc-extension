pragma solidity ^0.8.0;
contract MixedContactsExample555Mutated {
    uint public constant test = 1;
    uint x;
    uint public constant increment = 2;
    constructor() {
        x = test;
    }
    function foo() public {
        x += increment;
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample555Mutated {
    uint public constant test = 1;
    uint x;
    uint public constant increment = 2;
    uint public constant increment2 = increment;
    constructor() {
        x = test;
    }
    function foo() public {
        x += increment;
        x += increment;
    }
}
