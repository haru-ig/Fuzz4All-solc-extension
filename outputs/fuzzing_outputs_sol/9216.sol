pragma solidity ^0.8.0;
contract FallbackReturn {
    uint256 _x;
    uint256 getX() public view returns (uint256) {
        return _x;
    }
    function setX(uint256 x) public {
      _x = x;
    }
    function _fallback() public pure returns (uint256) {
        return 2345;
    }
    function setX2(uint256 newValue) public {
        _x = newValue;
    }
}
