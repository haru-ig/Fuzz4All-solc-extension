pragma solidity ^0.8.0;
contract A {
    uint alphabet = 27;
    uint public names;
    uint public namelength;
    function modify() public {
    assembly {
        names := alphabet
        namelength := alphabet
    }
    }
}
