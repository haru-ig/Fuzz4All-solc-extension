pragma solidity ^0.8.0;
contract Mutated3 {
    address payable address_;
    uint256[] data_;
    constructor(address payable _address, uint256[] _data) {
        address_ = _address;
        data_ = _data;
    }
    receive() external payable {

        require(msg.value >= 1 ether);

        bytes memory data;
        assembly {
            data := mload(add(add(data_, 0x20), 0x38))
        }
        data_.push(uint256(data));


        assembly {
            mstore(add(data_, 0x20), 0)
        }
    }
}
