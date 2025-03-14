pragma solidity ^0.8.0;
contract MyContract {
    function add(bytes16[] memory a) public pure returns (bytes16[] memory) {
        return a;
    }
    function add(string memory s) public pure returns (bytes16[] memory) {
        return bytes16[](0);
    }
    function add(uint256 x) public pure returns (bytes16[] memory) {
        return bytes16[](0);
    }
}
