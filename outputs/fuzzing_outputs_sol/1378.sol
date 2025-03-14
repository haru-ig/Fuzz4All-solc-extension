pragma solidity ^0.8.0;
contract Caller {
    fallback() external payable {
        emit Log("Payed Ether from contract: ", msg.sender);
    }

    receive() external payable {
        emit Log("Payed Ether from contract:", msg.sender);
    }

    function emit(string memory _eventString, address _address) public {
        emit _eventString(_address);
    }



    event Log(string memory _msg, address _address);
}
