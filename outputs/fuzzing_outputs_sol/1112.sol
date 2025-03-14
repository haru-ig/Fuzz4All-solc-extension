pragma solidity ^0.8.0;
contract AnotherComplexMutation10_Old {
    function receiver(bytes32 arg) public pure returns (bool) {
        return true;
    }
}
contract ComplexMutation10 {





    function transfer(address to_, uint256 value_) public {
        require(to_!= address(0), "INVALID_DESTINATION");
        require(value_ > 0, "MESSAGE_VALUE_ZERO");
        (bool success_,,) = to_.call{value: value_}(bytes(""));
        require(success_, "MESSAGE_FAILED");
    }





    function storage(uint256 offset_, uint8 data_) public {
        require(
            data_ < 255 && offset_ < 16,
            "MESSAGE_NOT_WHITELISTED_LOCATION"
        );

        uint8 storage result_ = memory()[offset_];

        uint8 storage_ = mapping(address => uint8).nextAddress(
            mapping(uint256 => uint8)(bytes20(address(this)).toBytes())
        )[bytes20(address(this)).toBytes()]._storage;
        for (uint256 i_ = 0; i_ < 4; i_++) {
            memory()[offset_ + i_] = uint8(uint8(result_ << 7) | storage_[i_]);
        }
    }
