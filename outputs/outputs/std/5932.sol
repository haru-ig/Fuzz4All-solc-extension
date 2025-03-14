pragma solidity ^0.8.0;
function callWithIncrement(address _addr, uint256 _x, uint256 _y) public {
        uint256 inc = _y / 2;
        _addr.call{value: _x * 2}(abi.encodePacked(_x, inc));
    }
}
