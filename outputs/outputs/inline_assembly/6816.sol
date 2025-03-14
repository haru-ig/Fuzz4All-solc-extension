pragma solidity ^0.8.0;
contract MixedContactsExample555Mutated {
    uint public constant test = 36;
    uint x;
    constructor() {
        x = test;
    }
    function foo() public {
        test -= 4;
        test++;
        test -= 5;
        if( (test < 2) || (test <= 4)) {
            delete test;
        }
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample555Mutated {
    uint public constant test = 6;
    uint x;
    constructor() {
        x = test;
    }
    function foo() public {
        delete test;
        test++;
    }
}
