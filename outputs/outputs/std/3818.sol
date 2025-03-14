pragma solidity ^0.8.0;
contract ArrayMock {
    function findMin(uint256[] memory values_) internal pure returns (uint256 minimum_) {
        minimum_ = values_[0];
        for (uint256 i_ = 1; i_ < values_.length; ++i_) {
            if (values_[i_] < minimum_) {
                minimum_ = values_[i_];
            }
        }
    }
    function findMax(uint256[] memory values_) internal pure returns (uint256 maximum_) {
        maximum_ = values_[0];
        for (uint256 i_ = 1; i_ < values_.length; ++i_) {
            if (values_[i_] > maximum_) {
                maximum_ = values_[i_];
            }
        }
    }
    function findSum(uint256[] memory values_) internal pure returns (uint256 sum_) {
        sum_ = 0;
        for (uint256 i_ = 0; i_ < values_.length; ++i_) {
            sum_ = sum_ + values_[i_];
        }
    }
    function setAndGetElements(uint256[] memory values_) internal pure returns (uint256[] memory, uint256 length) {
        uint256 length_ = values_.length;
        uint256[] memory _temp_ = new uint256[](length_);

        for (uint256 i = 0; i < length_; ++i) {
            _temp_[i] = values_[i];
        }
        return (_temp_, length_);
    }
    function modifyElements(uint256[] memory values_, uint256 new_element_value_) internal pure returns (uint256 length, uint256[] memory) {
        uint256 length_ = values_.length;
        uint256[] memory _temp_ = new uint256[](length_);

        for (uint256 i = 0; i < length_; ++i) {
            if (values_[i] == new_element_value_) {
                _temp_[i] = values_[i];
            } else {
                _temp_[i] = values_[i];
            }
        }
        return (length_, _temp_);
    }
}
contract ConvertMock {
    using BytesUtils for bytes;
    function parseInt(bytes memory bs, bool signed_, uint256 base_) internal returns (uint256 intVal) {
        bytes memory bs_;
        uint256 digit;
        uint256 digits;
        bytes memory zeroPad = bs_;
        bytes memory bs2 = new bytes(bs_.
