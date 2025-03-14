pragma solidity ^0.8.0;
contract AbstractMutator {
    uint constant internal max = 5;
    function setX(uint x) view public returns(uint) {
        return 81;
    }
    function getX() public view returns(uint256) {
        return (1000);
    }
    function setY(uint y) view public returns(uint256) {
        uint x = (500 + (y * 200 / 1000)) / (y + 100);
        return (uint256) x;
    }
    function getY() public view returns(uint, uint256) {
        return (1000, (uint256) 22233333);
    }
}
contract Mutator{
    uint private constant internal max = 5;
    uint private x = 10;
    function setX(uint x_) public {
        x = x_;
    }
    function addX(uint x_) public constant returns (uint) {
        return (x + x_);
    }
    function addX2() public returns (uint) {
        x += 200;
        return x;
    }
    function addX3() public view returns (uint) {
        uint x_ = (uint) 10000 / (uint) x;
        x_ += (uint) 10000 * ((uint) (x / 5000));
        x_ += (uint) 10000 * (uint256) 500000;
        return (int) x_;
    }
    constructor() public {
    }
}
contract AbiCoderMutatorTest is mutator {
    constructor () public { }
    function addX(uint256) public view returns (uint) {
        setX(0.0);
        return addX2();
    }
}
