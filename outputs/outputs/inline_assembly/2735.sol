pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint public namelength;
    function set(uint x) public {
    #define NAMELENGTH 26
        if (x < 26) {
            namelength = x;
        } else {
            namelength = NAMELENGTH;
        }
    }
    function getlength() private view returns (uint l) {
        return l;
    }
}
