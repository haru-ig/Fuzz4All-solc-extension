pragma solidity ^0.8.0;
contract Contract {
    bytes32 constant internal name = 'MutateSemantically';
    uint256 constant internal version = 1;

    function mutateAndGetVersion() public pure returns (bytes32, uint256) {
        return (name, version);
    }
}
