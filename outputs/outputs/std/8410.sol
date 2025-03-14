pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6B {
    uint[] memory a;
    function setB(uint x_) public {
        a.push(x_);
    }
    function getB() public view returns (uint[]) {
        return a;
    }
}
