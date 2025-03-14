pragma solidity ^0.8.0;
contract A {
    uint public names;
    uint public namelength;
    function set(uint x) public {
        if (x < 26) {
            namelength = x;
        } else {
            namelength = 26;
        }
    }
    function set(uint x) internal {
        require(x < 26, 'too short');
    }
    function getlength() private view returns (uint l) {
        return l;
    }
}
