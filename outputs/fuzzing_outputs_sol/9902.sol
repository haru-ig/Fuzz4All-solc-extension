pragma solidity ^0.8.0;
contract New {
    function new(uint _a) public returns(uint) {
        return 2*_a;
    }
}
contract Caller {
    function publicCall(address _contract) public returns(uint) {
        Old oldInstance = Old(_contract);
        return oldInstance.old(1);
    }

    function etherTransfer(uint _etherAmount, address _contract) public returns(uint) {
        address oldContractInstance = New(_contract);
        return oldContractInstance.new(_etherAmount);
    }

    function lowLevelCall(address _contract) public returns(uint) {
        (bool success, bytes memory data) = _contract.call{value: uint(address(this).balance)}(new bytes(0));
        require(success && (data.length == 0), "Fallback function triggered with invalid bytes");
        return Old(_contract).old(1);
    }

    fallback payable public;
}
