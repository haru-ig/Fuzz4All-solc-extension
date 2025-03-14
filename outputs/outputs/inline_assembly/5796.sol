pragma solidity ^0.8.0;
contract MutatedBlock2Mutation85 {
    uint internal _var;
    constructor() {
        _var++;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation86 {
    uint internal _var;
    function test1() public returns (uint) {
        _var--;
        return _var;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation87 {
    uint internal _var;
    function test1() public returns (uint) {
        _var++;
        uint _return;
        uint b = _return;
        _return = _return+1;
        return _return + 1 + b;
    }
}
