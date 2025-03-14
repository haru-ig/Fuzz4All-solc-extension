pragma solidity ^0.8.0;
contract Mutation {
    bytes32[3] public values;
    bytes32[3] public valuesReverted;
    bytes32[3] public valuesMutated;
    function mutate() external {
        values[0] = "first";
        values[1] = "1234123";
        values[2] = "5";
        valuesMutated[0] = values[0];
        valuesMutated[1] = values[1];
        valuesMutated[2] = values[2];
        bytes32[3] memory a = bytes32[3](values);
        a = bytes32(valuesMutated);
        require(a[0] == valuesMutated[0]);
        require(a[1] == valuesMutated[1]);
        require(a[2] == valuesMutated[2]);
    }
    receive() external {
        try this.mutate() {
            valuesReverted[0] = "revertedByReceive";
        } catch (Error(string memory reason){
            valuesReverted[0] = reason;
        }
    }
}
contract Caller {
    address private c;
    address[] private callers;
    constructor() {
        c = new ContractMutator().address;
        callers.push(c);
    }

    function executeMutation() public view {
        bytes32 data;
        (data,) = c.makecall{ returns (bytes32) }("mutate");
        require(data == valuesMutated[0]);
    }

    function executeNoFailure() public {
        bytes32 data;
        (data,) = c.makecall{ returns (bytes32) }("mutate");
        require(data == valuesMutated[0]);
    }

    function executeFailures(uint _delay) public {
        uint blockNumber = block.number;
        uint blockNumberReverted = block.number + 1;
        require(c.send(1 ether));
        uint blockNumberReverted2;
        do { blockNumberReverted2 = block.number + _delay; }
        while (block.number < blockNumberReverted2);
        bytes32 data;
        (data,) = c.makecall{ returns (bytes32) }("mutate");
        require(data == valuesMutated[0]);
        while(true);
    }

    function getCallerAddress() public view returns (address callerAddress) {
        uint id = findCaller(block.number);
        if(id == 0) {
            return (callerAddress);
        } else {
            return (callers[id]);
        }
    }

    function findCaller(uint blockNumber) private pure returns (uint) {
        for (uint i = 0; i < callers.length; i++) {
            if (block.number
