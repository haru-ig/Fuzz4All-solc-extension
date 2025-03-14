pragma solidity ^0.8.0;
contract Solidity {
    function setI(uint newI) public {
        i = newI;
    }
    function getI() public view returns (uint) {
        return i;
    }
    uint public i;
    uint public constant myConst = 42;
    uint public immutable otherI = 200;
}
