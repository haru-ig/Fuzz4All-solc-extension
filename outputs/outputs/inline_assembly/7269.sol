pragma solidity ^0.8.0;
contract Solidity {
    function setI(uint newI) public {
        i = newI;
        i++;
    }
    uint public i = 2;
    uint public constant myConst = 9;
}
