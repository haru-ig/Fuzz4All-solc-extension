pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() public pure {
        assembly{
            let previous := mload(0x40)
            mstore(0x40, add(previous, 4))
        }
    }
    function increment() public pure {
        increment_internal();
    }
}
