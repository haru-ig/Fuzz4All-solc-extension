pragma solidity ^0.8.0;
contract Example{
    uint x;
    uint256 y;
    uint32 z;
    function() public pure {}
    function simple(uint _x) public view returns (uint) {
        if (x!= 0) revert("Invalid input");
        uint256 _tmp = _x + 10;
        if (z > _x) revert("Invalid input");
        z = _tmp;
        x = 2;
        return _x + 10;
    }
}
