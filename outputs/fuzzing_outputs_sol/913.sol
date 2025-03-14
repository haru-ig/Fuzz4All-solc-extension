pragma solidity ^0.8.0;
contract Caller {
    receive () extremitary payable {
        uint x;
        assembly {
            x := mload(add(caller(), 0x20))
        }
    }
}
