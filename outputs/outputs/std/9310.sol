pragma solidity ^0.8.0;
contract Legacy
{
    uint256 public x;
    uint8 public x8;
    function set_x(uint256 _x_) public
    {
        x = _x_;
    }
    function get_x8() public view returns (uint8) {
        return x8;
    }
}
