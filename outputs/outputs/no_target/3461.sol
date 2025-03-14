pragma solidity ^0.8.0;
contract m07 {
    function M7(uint256 _c) public {
        uint256 _e;
        _e = 5;
        bool b = true;
        bool c;
        _c = 0;
        c = b;
        require(c, "Test failing: c should be true");
        c = false;
        _c = 0;
        c = b;
        require(c, "Test failing: c should be true");
    }
}
