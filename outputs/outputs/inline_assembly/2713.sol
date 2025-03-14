pragma solidity ^0.8.0;
contract D{
    uint public names;
    uint namelength;
    function set(uint x) public {
        namelength = x;
    }
    function clear() public {
        namelength = 0;
    }
    function getNamelength() public view returns (uint) {
        return namelength;
    }
}
