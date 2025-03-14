pragma solidity ^0.8.0;
contract Mutator {
    uint x;
    constructor() public {
        x=1;
    }
    function setOne() public {
        x=1;
    }
    receive() public payable {}
    mutating function setThree() external {
        x=1;
    }
    function shouldBe(uint counter) public view returns (bool) {
        counter++;
        return true;
    }
    receive() external payable {}
}
