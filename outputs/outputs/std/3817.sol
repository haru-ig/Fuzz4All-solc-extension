pragma solidity ^0.8.0;



contract MockArray {
    uint256[] public array;
    uint256 public arrayLength;

    constructor() {
        arrayLength = 0;
    }


    function set(uint256[] memory values_) public {
        array = new uint256[](values_.length);
        for (uint256 i = 0; i < values_.length; ++i) {
            array[arrayLength] = values_[i];
            arrayLength = arrayLength + 1;
        }
    }


    function fill(uint256[] memory values_) public {
        for (uint256 i = 0; i < values_.length; ++i) {
            array[i] = values_[i];
        }
        arrayLength = values_.length;
    }


    function clear() public {
        arrayLength = 0;
    }


    function length() public view returns (uint256 length_) {
        length_ = arrayLength;
    }


    function valueAt(uint256 position_) public view returns (uint256 value_) {
        require(position_ <= arrayLength, "Position out of bounds.");
        value_ = array[position_];
    }
}
