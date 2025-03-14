pragma solidity ^0.8.0;
contract Solidity {
    function setI() public {
        i = 99;
        i++;
        i--;
    }
    uint public constant myConst = 99;
    uint public newV = 9;
    uint public constant iMax = 15;
    uint public i = 0;
}
