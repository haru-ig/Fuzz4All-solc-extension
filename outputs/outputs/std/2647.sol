pragma solidity ^0.8.0;
contract EthContractLib {
    function callEVMFunction() public view {
        Eth.setBalance(42, msg.value);
        Eth.callEVMFunction(56, bytes.decode("Hello, world"));
    }
    function gasCostOfCallValue(uint _gasProvided, uint _valueProvided) public view returns (uint) {
        return Eth.gasCostOfCallValue(_gasProvided, _valueProvided);
    }
    function gasCostOfCalldata(bytes32 _callDataValueProvided) public view returns (uint) {
        return Eth.gasCostOfCalldata(_callDataValueProvided);
    }
}
