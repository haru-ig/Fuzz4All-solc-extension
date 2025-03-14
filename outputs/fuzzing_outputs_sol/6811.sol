pragma solidity ^0.8.0;
contract Solidity {
    address private sender;
    bytes private data;
    function fallback() override() external { }
}

pragma solidity ^0.8.0;
contract Solidity {
    address private sender;
    bytes private data;
    function fallback() override() public payable {
        if (sender!= msg.sender) { data.push(abi.encodePacked(msg.sender, msg.value)); }
    }
}
