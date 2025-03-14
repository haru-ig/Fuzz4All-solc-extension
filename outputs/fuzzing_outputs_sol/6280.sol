pragma solidity ^0.8.0;
contract EquivalentMutantCompatibility {
    constructor() { }
    modifier incompatibleMutant { }
    modifier incompatibleNonMutant { }
    function mutantFunction() public incompatibleMutant compatibleWith Equivalent { }
    function mutantFunctionFallback() public incompatibleMutant compatibleWith Equivalent { }
    function compatibleWith(address contractAddress) public { }
    function incompatibleFunction() public incompatibleMutant compatibleWith Equivalent { }
}
contract CompatibleMutantCompatibility {
    constructor() { }
    modifier incompatibleWithMutant { }
    modifier incompatibleWithNonMutant { }
    function mutantFunction() public incompatibleWithMutant compatibleWith EquivalentMutantCompatibility { }
    function mutantFunctionFallback() public incompatibleWithMutant compatibleWith EquivalentMutantCompatibility { }
    function mutantFunctionIncompatible() public incompatibleWithNonMutant compatibleWith EquivalentMutantCompatibility { }
    function compatibleWith(address contractAddress) public { }
    function incompatibleFunction() public incompatibleWithMutant compatibleWith EquivalentMutantCompatibility { }
}
contract Caller {
    function contractImplementation() public returns (address) {
        return address(new EquivalentMutantCompatibility());
    }
    function contractFallback() public {
        callToContract(address(new Equivalent()));
    }
    function callToContract(address contractAddress) public payable {
        assembly {
            let data := mload(0x40)
            let pointer := mload(0x40)
            calldatacopy(data, 0, pointer)
            let result := call(gas(), contractAddress, add(data, 32), pointer, 0, 0, 0)
            let returnData := mload(returndata)
            returndatacopy(0, 0, returnData)
            return(returnData)
        }
    }
}
