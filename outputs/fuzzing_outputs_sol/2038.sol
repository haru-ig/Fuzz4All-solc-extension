pragma solidity ^0.8.0;
contract Mutater2 {
    event Mutated(address indexed fromBlockHolder, address indexed toBlockHolder);
    mapping (address => uint256) _value;
    bool _isPaused;
    function mutatedFunction(uint32 value, bool isPaused) public {
        _value[msg.sender] = value;
        _isPaused[msg.sender] = isPaused;
        emit Mutated(block.coinbase, msg.sender);
        mutatedFunctionImpl(value, isPaused);
    }
    function mutatedFunctionImpl(uint32 value, uint isPaused) public pure {}
}
