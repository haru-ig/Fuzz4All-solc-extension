pragma solidity ^0.8.0;
contract mutantSolidity38941234290 {
    uint256 y_;
    function y() public pure returns (uint256){
        y_ += 1;
        emit(y(y_), "y is", y_);
        return 0;
    }
    function y(uint256 i, string memory msg) internal pure returns (uint256) {

        return msg + i + 1;
    }
}
