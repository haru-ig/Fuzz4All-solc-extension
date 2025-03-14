pragma solidity ^0.8.0;
contract MutatedBlock2Mutation84 {
    uint internal _var;
    uint internal _another;
    function test1() public returns (uint) {
        _var++;
        return _var;
    }
    function test2() public returns (uint) {
        _var--;
        return block.timestamp;
    }
    function test3() public returns (uint) {
        if (0 == block.timestamp) {
            return 0;
        } else {
            return block.timestamp;
        }
    }
    function test4() public returns (uint) {
        return _var;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation85 {
    uint internal _var;
    uint internal _another;
    function test1() public returns (uint) {
        _var++;
        return _var;
    }
    function test2() public returns (uint) {
        assembly {
            _var = _var + 10
        }
        return _var;
    }
    function test3() public returns (uint) {
        if (0 == block.timestamp) {
            return 0;
        } else {
            return block.timestamp;
        }
    }
    function test4() public returns (uint) {
        return _var;
    }
}
