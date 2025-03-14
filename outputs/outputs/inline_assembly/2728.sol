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
    function getlength() private view returns (uint l) {
        return l;
    }
}
