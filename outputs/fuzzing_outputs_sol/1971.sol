pragma solidity ^0.8.0;
contract Mutater3 {
    uint32 count;
    uint32 internal _value;
    receive() external {
        if (count < 2) {
            _value = count;
            count = (count > 1)? 0 : ++count;
        } else {
            _value = 0;
            count <= 3;
        }
    }
}
