pragma solidity ^0.8.0;
contract TestMutator {
    address newContract_0;
    uint8 value;
    IFunctionWithFallbackMutated ( msg.sender ) ;
    constructor ( address _target, uint8 _value ) {
        newContract_0 = IFunctionWithFallbackMutated ( _target ).callWithFallbackReturn ( abi.encode ( _value: _value ) );
    }
    function changeTarget(address _target) public returns (bytes memory) {
        value = 14;
        return IFunctionWithFallbackMutated ( _target).callWithFallbackReturn ( abi.encode ( value: value ) );
    }
}
