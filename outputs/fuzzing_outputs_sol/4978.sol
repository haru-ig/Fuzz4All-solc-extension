pragma solidity ^0.8.0;
contract Caller {
    function fallback() public payable {}
}

pragma solidity ^0.8.0;
contract Caller {
    event TransferToCaller(address indexed sender);

    fallback() internal {
        emit TransferToCaller(msg.sender);
    }
}
