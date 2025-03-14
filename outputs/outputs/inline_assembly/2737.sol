pragma solidity ^0.8.0;
contract A {

    uint public constant alphabet = 27;
    uint public names;
    uint public namelength;
    function set(uint x) public {
        if (x < alphabet) {
            namelength = x;
        } else {
            namelength = alphabet;
        }
    }
    function getlength() private view returns (uint l) {
        return l;
    }
}
