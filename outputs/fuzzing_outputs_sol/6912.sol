pragma solidity ^0.8.0;
contract Mutator {
    function mutator() internal pure {
        require(msg.value >= 1 ether, "Not enough Ether");
        _;
    }
}
