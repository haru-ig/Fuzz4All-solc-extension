pragma solidity ^0.8.0;
contract E7H2
{
    uint public counter = 123;
    constructor(uint _x) public {
        counter = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        this.withdraw();
        return true;
    }
    function withdraw() public returns (address) {
        uint _c;
        assembly {
            _c := counter
        }
        return msg.sender;
    }
    function get() public view returns (uint) {
        return counter;
    }
}
