pragma solidity ^0.8.0;
contract sn_solidity_abi_coder {
    bytes4 constant public SUCCESS = 0x19c0e6c1;

    function sn_solidity_abi_coder(address _address) public {
        require(msg.data.length >= 56,'message too short');
        address sender;
        bytes4 value;
        uint256 gas;
        address gasPrice;
        (address(gas), gasPrice) = getGasAndGasPrice(msg.data);
        (value, sender, ) = getValueFromMessage(msg.data);
        _address.call{ value: value, gas: gas }();


        assembly {
            let calldatacopy := mload(calldataload(40))
            let length := calldatasize

            let memory := add(mload(0), length)
            calldatacopy := add(calldatacopy, 32)
            sstore(memory, calldatacopy)

            returndatacopy := mload(calldataload(32))
            returndata := add(returndatacopy, 32)
            sstore(memory, returndata)

            return(0, returndatacopy, returndata)
        }
    }

    function getGasAndGasPrice(bytes memory data) private pure returns (address, uint256, bool, bool){
        uint256 offset = 20;
        uint8 gas_index = (uint8(uint8(data[offset])) < 24 || uint8(uint8(data[offset])) > 29)? 37: (uint8(uint8(data[offset])) - 25) + 20;
        uint8 gas_param = (uint8(uint8(data[gas_index])) < 24 || uint8(uint8(data[gas_index])) > 29)? 37: uint8(uint8(data[gas_index]) - 25) + 20;
        offset += gas_param;
        (gas, gasPrice) = getValueFromMessage(data.sub(offset));
        uint returndata_index = offset + gas_param;
        bytes memory returndata;
        uint returned_gas;
        if(data[returndata_index] == 0x03) {
            returndata = abi.decode(data.sub(offset).sub(gas_param), (bytes));
            returned_gas = uint256(int128(0x6e80)) - gas;
        }
        bool is_revert;
        return (address(0), (uint256)gas, is_revert, true);
    }

    function getValueFromMessage(bytes memory data) internal pure returns (uint256, address, bytes4,
