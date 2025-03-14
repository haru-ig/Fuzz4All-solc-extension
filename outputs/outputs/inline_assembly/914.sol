pragma solidity ^0.8.0;
contract Migrations {
    struct MigrationsInfo {
        uint256 lastAttemptedMigration;
        uint256 nextAttemptedMigration;
        bytes deployedBytecode;
    }
    mapping(uint256 => MigrationsInfo) internal _deployedContractInfo;
    function _getDeployedBytecodeFromContract(address _deployed) private view returns(bytes memory) {
        return abi.decode(_deployed.call{value: 0x0}(), (bytes));
    }
    function migrate(address _to) external {
        require(msg.sender == address(incrementer));
        _deployedContractInfo[block.number].lastAttemptedMigration = _deployedContractInfo[block.number].nextAttemptedMigration;
        _deployedContractInfo[block.number].nextAttemptedMigration = block.number;

        _deployedContractInfo[block.number].deployedBytecode = _getDeployedBytecodeFromContract(_to);
    }
    function getDeploymentBytecode(address _deployed) external view returns(bytes memory) {
        return _deployedContractInfo[_deployed.target].deployedBytecode;
    }
}
contract Incrementer {

    address internal incrementer;

    constructor() public {

        assembly {
            incrementer := mload(0x40)
        }
    }
    function() external payable {

        Incrementer.increment_internal{value: msg.value}(incrementer);
    }
}
