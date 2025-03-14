pragma solidity ^0.8.0;
contract Semantic {
    function setI() public {
        i = myConst + newV;
        i++;
        i--;
    }
    uint public constant myConst = 99;
    uint public constant newV = 0;
    uint public constant iMax = 15;
    uint public i;
}
