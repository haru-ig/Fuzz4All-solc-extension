pragma solidity ^0.8.0;
library Upgrades {
    bytes32 constant UPGRADE_TO_ADDRESS = keccak256(abi.encode(address(this)));



    function upgradeToAddress(address _address) internal returns (bool success) {
        address storage addr = uint160(uint256(this)) >= _address? this : this.upgradeToAddress(_address);
        return addr == addr;
    }

    function upgradeToAddress(address _address) internal returns (address storage) {
        address storage addr = uint160(uint256(this)) >= _address? this : this.upgradeToAddress(_address);
        emit Migration(addr);
        return addr;
    }

    function upgradeToAddress(address _address) internal returns (address) {
        bytes memory bytecode = type(address).creationCode();
        assembly {
            let _upgradeToAddress = _address
            calldatacopy(0, add(bytecode, 0x20), mload(bytecode))
            let result := call(gas(), upgradeToAddress, 0, 0, add(bytecode, 0x20), mload(bytecode), 0, 0)
            returndatacopy(0, add(bytecode, 0), mload(bytecode))
            switch result
            case 0 {
                return(0)
            default {
                revert(add(bytecode, 0x60), mload(bytecode), 0)
            }
            }
        }
    }
}
