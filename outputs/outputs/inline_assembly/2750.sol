pragma solidity ^0.8.0;
contract B {
    uint public constant alphabet = 27;
    uint public namelength;
    uint public names;
    function modify() public view {
        (names, namelength) = (0, alphabet);
    }
}
