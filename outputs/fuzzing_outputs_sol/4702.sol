pragma solidity ^0.8.0;
contract Mutator {
    uint shouldBe(uint y) public  {
        y = y + 1;
    }
}

contract Example is Mutator {
    function shouldBe(uint counter) public returns (uint) {
        return counter;
    }
}
