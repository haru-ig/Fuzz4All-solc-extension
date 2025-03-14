pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public names;
    uint public namelength;

    function modify() public {
        namelength = alphabet;
    }
}
