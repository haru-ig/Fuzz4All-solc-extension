pragma solidity ^0.8.0;
contract m04 {
    function M4(uint256 _c) public {
        require(_c % 2 == 0, "Test failing: _c should be divisible by 2");
    }
}
