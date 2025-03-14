pragma solidity ^0.8.0;
contract IWrapper {
    function getWrapperData() external view returns (bytes32);
    function getWrapperDataSize() public view returns (uint32);
}
contract Token {
    address payable private address_;
    uint256 private balance_;

    constructor(address payable anAddress) {
        address_ = anAddress;
        balance_ = IWrapper(anAddress).getWrapperDataSize();
    }

    function wrapperSize() public view returns (uint32 value) {
        IWrapper iWrapper = IWrapper(address_);
        uint32 dataSize = iWrapper.getWrapperDataSize();
        require(dataSize == balance_, "notEqual");
        value = iWrapper.getWrapperDataSize();
    }

    function wrapperAddress() public view returns (address wrapperAddress) {
      uint32 dataSize = 0;
      (, dataSize) = IWrapper(address_).getWrapperData();
      wrapperAddress = IWrapper(address_).getWrapperData();
    }

    function updateWrapper(address payable _sender, uint32 value_) public {
      IWrapper iWrapper = IWrapper(address_);
      iWrapper.getWrapperData.value(value_)(_sender);
    }
    function updateWith(address payable _sender, uint32 _value_per_byte_) public {
        uint256 value = IWrapper(address_).getWrapperDataSize();
        if (value == _value_per_byte_) {
            return;
        }
        _sender.transfer(value *_value_per_byte_);
    }
}
