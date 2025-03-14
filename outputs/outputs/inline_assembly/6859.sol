pragma solidity ^0.8.0;
contract MutatedContactsExample086 {
    uint x;
    uint test = 69;
    constructor() {
        x;
        uint(x) += 1;
        x;
    }
}

pragma solidity ^0.8.0;
contract RecurseContract {
    uint public x;
    uint[] memory a;
    function recursed() internal returns(uint) {
        x = recursed();
        return recursed();
    }
    function testMut() public {
        x;
        uint(x) += 1;
        x;
        uint(a.length) += 1;
        a.push(recursed());
        a.push(recursed());
        a;
        test;
        uint(a.length) += 1;
        a;
    }
    constructor() {
        a.length = 1;
        uint(x) += 1;
        a;
        a.push(recursed());
        a.push(recursed());
        x;
    }
}
