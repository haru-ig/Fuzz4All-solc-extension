pragma solidity ^0.8.0;
contract ArrayOverflow {
    function sum(uint256[] memory a) public pure returns (uint256 sum){
        uint256 length_ = a.length;
        uint256 total_ = 0;
        for(uint i_ = 0; i_ < length_; i_++)
        {
            total_ += a[i_];
        }
        return total_;
    }
}
