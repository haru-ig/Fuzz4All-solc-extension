pragma solidity ^0.8.0;
contract Mutater {
    uint32 count = 0;
    fallback() external payable {

        count = (count > 1)? 0 : count;
    }
}
