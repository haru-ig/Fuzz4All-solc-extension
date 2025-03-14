pragma solidity ^0.8.0;
contract B is A {
    function set(uint x) public {
        if (names!= x) {
            names = x;
        }
        if (x < alphabet) {
            namelength = x;
        } else {
            namelength = alphabet;
        }
    }
    function getlength() private view returns (uint l) {
        return names;
    }
}

contract Z is A {
    function set(uint x) public {
        if (names!= x) {
            names = x;
        }
        uint l = getlength();
        if (x < l) {
            namelength = x;
        } else {
            namelength = l;
        }
    }
}
