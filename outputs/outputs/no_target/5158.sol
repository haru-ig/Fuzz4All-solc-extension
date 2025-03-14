pragma solidity ^0.8.0;

contract PrintMe {
    string public source;
    function print() public view returns (string memory) {
        bytes memory data = (abi.encodePacked(this));
        return (string(data)).substring(26, data.length - 18);
    }
}
