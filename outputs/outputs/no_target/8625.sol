pragma solidity ^0.8.0;
contract Reverted {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        revert("bad");
    }
}
contract Rejected {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        emit Reverted();
        return 0;
    }
}
