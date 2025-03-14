pragma solidity ^0.8.0;
contract DuckFactory {
    function createDuck() public pure returns (address) {
        return msg.sender;
    }
}
