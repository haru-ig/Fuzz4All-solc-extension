pragma solidity ^0.8.0;
contract m06 {
    function M6(uint256 _c) public {
        uint256 _e;
        _e = 5;
        require(_c > _e, "Test failing: _c should be greater than _e");
    }
}
