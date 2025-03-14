pragma solidity ^0.8.0;
contract Mutator {
    uint public counter;
    function shouldBe(uint counter) internal view returns (bool){
        counter = counter + 1;
        return false;
    }
    receive() external payable {}
}
