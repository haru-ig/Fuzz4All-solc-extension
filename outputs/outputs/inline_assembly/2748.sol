pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public namelength;
    uint public names;
    function modify() public {
        (names, namelength) = (0, alphabet);
    }
}
