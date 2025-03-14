pragma solidity ^0.8.0;
contract Mutater2 {
    uint32 count;
    uint32 internal _value;
    receive() external payable {
        if (count < 2) {
            _value = count;
            count = (count > 1)? 0 : ++count;
        } else {
            _value = 0;
            count < 4;
        }
    }
}
