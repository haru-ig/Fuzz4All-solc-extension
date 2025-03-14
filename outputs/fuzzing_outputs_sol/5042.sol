pragma solidity ^0.8.0;

contract Mutated {
    uint256 public value;

    function mutated (uint256 _value) public {
        emit Muted(msg.sender, _value);
        value = _value;
    }
    event Muted(address caller, uint256 value);
    function getData() public view returns(uint256) {
        return value;
    }
}
