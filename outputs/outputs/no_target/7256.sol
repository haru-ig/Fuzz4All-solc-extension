pragma solidity ^0.8.0;
contract AbiCoderMutatedCounter {
    uint constant internal max = 50;
    function setX(uint x) public {
        this.setX(uint256(uint160(x - 1)));
    }
    function setY(uint y) public {
        this.setY(uint256(uint8(y) - (uint8(y) == y)));
    }
}
