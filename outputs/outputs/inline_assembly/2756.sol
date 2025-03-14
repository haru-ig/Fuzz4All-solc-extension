pragma solidity ^0.8.0;
contract A {
    uint public alphabet;
    uint public names;
    uint public namelength;
    function modify() public payable {
        (names, namelength) = (msg.value);
    }
}
