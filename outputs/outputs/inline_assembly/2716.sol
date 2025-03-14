pragma solidity ^0.8.0;
contract D{
    uint private internal names;
    uint private internal namelength;
    constructor() {
        namelength = 12345;
    }
    function set(uint newlength) public {
        if (newlength < namelength) {
            revert();
        }
        namelength = newlength;
    }
    function clear() public {
        namelength = 0;
    }
    function getNamelength() public view returns (uint) {
        return namelength;
    }
}
