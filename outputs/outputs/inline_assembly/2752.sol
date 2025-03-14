pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public namelength;
    uint public names;
    mapping(uint => uint) balances;
    function modify() public {
        balances[0] = 0;
        (names, namelength) = (0, alphabet);
        balances[0] = 1;
        (names, namelength) = (0, alphabet);
    }
}
