pragma solidity ^0.8.0;
contract Test {
    event LogEvent();
    uint public uint_One = 1;
    modifier TestModifiers() {
        LogEvent();
        return;
    }
    constructor() {}
}

pragma solidity ^0.8.0;
contract Test {
    uint public uint_One = 1;
    modifier TestModifiers() {
        LogEvent();
        Test modifiers2();
        TestModifiers();
        return;
    }
    constructor() {}
}
