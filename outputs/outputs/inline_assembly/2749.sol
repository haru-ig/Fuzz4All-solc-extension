pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public names;
    uint public namelength;
    modifier modify() {
        names += 5;
    }
    function modify() public {
        namelength = alphabet;
    }
}
