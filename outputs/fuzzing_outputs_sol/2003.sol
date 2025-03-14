pragma solidity ^0.8.0;
contract Mutater55 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public pure {
        require(msg.value >= 0);
        _value = value;
        uint32 storage tempValue = _value;
        tempValue--;
    }
    fallback function() external payable {
    }
}
