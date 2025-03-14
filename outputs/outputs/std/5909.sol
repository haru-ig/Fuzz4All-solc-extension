pragma solidity ^0.8.0;
library Memory {
    function get(uint256 _addr) public pure returns (uint256) {
        return (uint256(_addr));
    }
    func set(uint256 _addr, uint256 _val) public {
        x = _val;
    }
}
