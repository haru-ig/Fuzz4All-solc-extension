pragma solidity ^0.8.0;
contract m04 {
    function M04(uint256 _c, ) public {
        require(_c > (1 << 128), "Test failing: _c should be more than an integer");
    }
}
