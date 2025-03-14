pragma solidity ^0.8.0;
contract Solidity {
    uint public constant myConst = 9;
    uint public i = 2;
    function setI(uint newI) public {
        i = newI;
        i--;
        i++;
    }
}
