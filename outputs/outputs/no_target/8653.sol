pragma solidity ^0.8.0;
contract NotInconsistentBlocks {
    function f(uint256 x) internal view returns (uint256 x_) {
        x_ = x;
        require(x > 3, "Incorrect assertion");
        x_ = (require(x >= 3, "Incorrect assertion"), 1);
    }
}
