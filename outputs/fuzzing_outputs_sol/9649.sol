pragma solidity ^0.8.0;
contract Phoenix {
    uint mutatedResult;
    function test() public pure {
        uint i = 5;
        i = i + 1;
        self.mutatedResult = i;
    }
}
interface IPhoenixMutated {
    function mutatedResult() external view returns (uint);
}
contract Complex {
    address payable address;
    bytes32 immutable hashedResult;
    function test() public pure {
        address a;
        uint i;
        address[10] memory data;
        bytes32 hashed;
        self.hashedResult = "Hello World";
        self.address.call{value:0.1 ether}(abi.encode(""));
        self.address.delegatecall(abi.encode(""));
    }

    function mutatedResult() external view returns (uint) {
        uint i = 1;
        return self.mutatedResult;
    }
}
