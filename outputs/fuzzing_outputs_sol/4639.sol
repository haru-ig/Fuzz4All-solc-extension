pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint counter) internal view returns (bool) {
        counter++;
        return true;
    }
}
