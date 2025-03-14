pragma solidity ^0.8.0;
contract m05 {
    function M51(int _c) public {
        require(_c > -20, "Test failing: _c should be greater than -20");
    }
}
