pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint namelength;
    function set(uint x) public {
        if (x < 26) {
            namelength = x;
        } else {
            namelength = 26;
        }
    }
    function clear() public {
        namelength = 0;
    }
    function getNamelength() public view returns (uint) {
        return namelength;
    }
}
