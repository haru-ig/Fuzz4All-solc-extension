pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivApp {
    function mutate(uint256 x) public pure returns (uint256) {

        return x - 7;
    }
}
