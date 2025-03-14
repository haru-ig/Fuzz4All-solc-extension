pragma solidity ^0.8.0;
contract EtherReceiver {
    function handleTransfer(address recipient, uint256 amount) public payable {}
    receive() public payable {}
}

pragma solidity ^0.8.0;
