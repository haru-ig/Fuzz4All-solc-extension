pragma solidity ^0.8.0;
contract SemanticMutator {
    function shouldBe(uint counter) internal view returns (bool) {
        counter = counter + 1;
        return false;
    }
}
