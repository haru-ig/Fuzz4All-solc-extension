pragma solidity ^0.8.0;
contract ArrayMock {
    function sum(uint256[] memory values_) internal pure returns (uint256 sum_) {
        sum_ = 0;
        for (uint256 i_ = 0; i_ < values_.length; ++i_) {
            sum_ = sum_ + values_[i_];
        }
    }
}
contract ConvertMock {
}
contract MathMock {
}
contract MemoryMock {
}
contract MultiprecisionMock {
}
contract RandomMock {
}
