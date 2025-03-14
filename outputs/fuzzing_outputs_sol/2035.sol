pragma solidity ^0.8.0;
contract Mutater2 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        _value = value;
        require(value > 0 || value!= _value, "Error");
        mutatedFunctionImpl(value);
    }
    function mutatedFunctionImpl(uint32 value) private {
        if (value > 0) {
            revert();
        }
    }
}


pragma solidity ^0.8.0;
library EtherContractInterface {
    uint32 constant ETHER = 1000;
    function contractFallback(address receiver, address txData) external returns (bool);
    function payableContractFallback(address receiver, bytes calldata data) external payable returns (bool);
    function sendEtherToContract(address contractAddress, uint32 etherValue) external payable returns (bool);
    function contractReturn(address receiver, uint32 returnValue) external returns (bool);
}
