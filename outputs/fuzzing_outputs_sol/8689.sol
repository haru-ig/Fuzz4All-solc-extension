pragma solidity ^0.8.0;


contract Caller {
    struct Person {
        address owner;
        string state;
        bool hasCall;
    }

    address private owner;
    mapping (address => Person) private contracts;

    event ContractState(bytes32 indexed state, address indexed owner);


    function() external payable {
        contracts[msg.sender].state = "Received Ether!";
        contracts[msg.sender].owner = msg.sender;
        emit ContractState("Created", msg.sender);
    }


    function lowLevelCallERC2718() external payable {
        address contractWithFallback = contracts[msg.sender].owner;
        if (contractWithFallback.isContract) {
            (bool success, bytes memory data) = contractWithFallback.call{ value: msg.value }("");

            require(success);
        }
    }

    function lowLevelCallDataERC2718(bytes memory data) external payable {
        address contractWithFallback = contracts[msg.sender].owner;
        if (contractWithFallback.isContract) {
            bool success;
            (success, ) = contractWithFallback.call{ value: msg.value }(data);

            require(success);
        }
    }
}
