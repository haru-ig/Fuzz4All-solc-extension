pragma solidity ^0.8.0;
library UpgradesLegacy {
    bytes32 constant UPGRADE_TX_HASH = keccak256(abi.encode(0xf4aa00));

    event Migration(address indexed newContract);

    function upgrade(address _from, bytes memory _data) internal returns (bool) {
        require(msg.sender == _from);
        require(keccak256(abi.encode(_data)) == UPGRADE_TX_HASH);
        emit Migration(address(this));
        return true;
    }
}
