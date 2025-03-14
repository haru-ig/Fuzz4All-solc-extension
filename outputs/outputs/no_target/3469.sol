pragma solidity ^0.8.0;
contract m06__ {
    function M6(uint256 _c) public {
        uint256 _e;
        _e = 5;
        require(bool(_c) > bool(_e), "Test failed: _c should be greater than _e");
    }
}
