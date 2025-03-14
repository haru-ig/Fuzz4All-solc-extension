pragma solidity ^0.8.0;
contract Test{
    bytes32 public name;
    uint public max;
    constructor(bytes32 _name, uint _max) public {
        name = _name;
        max = _max;
    }
    function getMax() public view returns(bytes32) {
        return name;
    }
}
