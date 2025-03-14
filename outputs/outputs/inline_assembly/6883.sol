pragma solidity ^0.8.0;
contract MutatedContactsExample180 {
    address _initAddress;
    constructor() payable {
        require(_initAddress == address(0));
        _initAddress = msg.sender;
    }

    function changeMyAddress() public {
        _initAddress = address(3);
    }
}
