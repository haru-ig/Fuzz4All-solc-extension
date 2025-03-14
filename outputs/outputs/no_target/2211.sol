pragma solidity ^0.8.0;
contract Modifications2_SEM8 {
    function add2(uint256 _x, uint256 _y) public pure returns (uint256) {
        require(_x >= _y);
        uint256 x = _x + _y;
        return uint(x >= 2 * _y? x : _y);
    }
}
contract Modifications2_SEM9 {
    function add3(uint256 _x, uint256 _y) public pure {
        uint256 x = _x + _y;
        require(x >= 2 * _y);
    }
}
