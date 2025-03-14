pragma solidity ^0.8.0;
contract m04 {
    function M4(address _a) public view returns (uint256) {
        return address(0x0100000000000000000000000000000000000000000000).balance;
    }
}
