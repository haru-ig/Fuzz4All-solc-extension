pragma solidity ^0.8.0;
contract Mutator4 {
    function shouldBe(uint counter) public pure returns (uint) {
        counter = counter + 1;
        require(counter < 5);
        return counter;
    }
}
