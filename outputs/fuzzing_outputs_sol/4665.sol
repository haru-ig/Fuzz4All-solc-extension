pragma solidity ^0.8.0;
contract Mutator {
    constructor() {}
    function shouldBe(uint counter) internal pure returns (bool){
         counter = counter + 1;
         return false;
    }
    receive() external payable {}
}
