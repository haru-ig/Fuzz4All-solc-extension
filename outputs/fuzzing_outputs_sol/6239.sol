pragma solidity ^0.8.0;
contract Mutant3 {
    function call(address payable _call, address _fallback) public {
        uint256 gas = gasleft();
        assembly {
            let data := mload(0x40)
            _call.call{gas: gas, value: 0, data: 0}(_fallback)
            let fallbackOutput := mload(0x40)
            returndatacopy(0x0, 0x0, gas)
            let fallbackReturnData := returndatasize()
            mstore(0x40, fallbackOutput)
            mstore(0x80, fallbackReturnData)
            revert(0x0, fallbackReturnData)
        }
    }
}
