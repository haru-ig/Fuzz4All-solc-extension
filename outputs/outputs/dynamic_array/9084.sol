pragma solidity ^0.8.0;
library SafeMath {
    function add(uint256 x, uint256 y) internal pure returns (uint256 _sum) {
        _sum += x;
        require(_sum >= x, "SafeMath: addition overflow");
    }
    function sub(uint256 x, uint256 y) internal pure returns (uint256 _difference) {
        require(x >= y, "SafeMath: subtraction overflow");
        return _sum - x;
    }
}
