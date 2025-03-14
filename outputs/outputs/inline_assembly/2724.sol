pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint constant namelength = 26;
    function set(uint x) public {
        if (x < namelength) {
            namelength = x;
        }
    }
    function clear() public {
        namelength = 0;
    }
    function getNamelength() public view returns (uint) {
        return namelength;
    }
}
