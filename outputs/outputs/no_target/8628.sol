pragma solidity ^0.8.0;
contract Untouched {
    function mod(uint y_) public pure returns (uint z_) {
        require(y_ <= 0 || y_ >= 10 && z_ == 0);
        return (0);
    }
}
contract MutatedAndUntouched {
    function mod(uint y_) public view returns (uint z_) {
        require(y_ <= 0 || (y_ < 10 && z_ == 0));
        return (0);
    }
}
