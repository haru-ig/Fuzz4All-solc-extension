pragma solidity ^0.8.0;
contract Mutater {
    uint64 count = 0;
    receive() external payable {
        count = (count > 1)? 0 : count;
    }
}
