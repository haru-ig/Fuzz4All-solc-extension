pragma solidity ^0.8.0;
contract A_ {
    A internal a;
    uint public names;
    uint namelength;
    modifier withA {
        (a, l) = a.namelength();
        if (l < 26) {
            namelength = l;
        } else {
            namelength = 26;
        }
        _;
    }
    function set(uint x) public withA {
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
