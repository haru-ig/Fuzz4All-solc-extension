pragma solidity ^0.8.0;
contract ModifiedContractV2 is MutatedContractV2 {
    uint public newContractResult =
        uint(abi.decode(
            message,
            (uint256[])
        ))[1]+
        increment;
}
contract MutatedContract {
    uint constant value = 362;
    function modifyValue() public pure returns (uint) {
        return uint(msg.data) % uint(value);
    }
}
contract Contract {
    uint constant value = 40;

    function getValue() public pure returns (uint) {
        return uint(value);
    }
}
