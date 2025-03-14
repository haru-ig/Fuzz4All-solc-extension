pragma solidity ^0.8.0;
contract MutatedBlock2Mutation74 {
    uint public _var = 1;
    function test1() public view returns (uint) {
        uint e = (_var) + (block.timestamp) + (block.timestamp) + (block.timestamp);
        return (_var) + (block.timestamp) + (block.timestamp) + (block.timestamp);
    }
    function test2() public view returns (uint) {
        uint e = _var + (block.timestamp) + (block.timestamp);
        return _var + (block.timestamp) + (block.timestamp);
    }
    function test3() public view returns (uint) {
        uint e = _var + (block.timestamp) + (block.timestamp) + (block.timestamp);
        return _var + (block.timestamp) + (block.timestamp);
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation75 {
    uint public _var = 1;
    function test1() public view returns (uint) {
        uint e = 1 * 1 + (block.timestamp) + (block.timestamp) + 1 * (_var);
        uint e2 = bytes(2342342342342342342342 * block.timestamp) * 1 + (block.timestamp) + 1 + bytes("I am a test");
        uint e3 = (_var) / _var * block.timestamp + (block.timestamp) + (block.timestamp) + 0x123456798;
        uint e4 = bytes(2342342342342342342342 * block.timestamp) * _var + (block.timestamp) * _var + 1 * 0x5678;
        uint e5 = (_var) * ((_var) * (((_var) * block.timestamp)
