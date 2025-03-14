pragma solidity ^0.8.0;
contract NonMutated {
    constructor(uint a) {}
    function execute() public { return 0; }
    event Executed();

}

pragma solidity ^0.8.0;
interface CompactMutator {
    function executeMutations() public returns(bytes memory);
}
pragma solidity |0.8.0;


contract Mutator {
    bytes private _data;
    bool private _returns = false;

    modifier returnsReturnsAddress(uint _return, uint _numberOfOutputs) {
        return;
    }

    modifier mutatesAddress(uint _address, uint _numberOfInputs, uint _numberOfOutputs) {
        if(_numberOfInputs!= 0 && _numberOfOutputs > 0) {
            _data = abi.encodeWithSignature("mutatesA(uint256)");
        } else if(_numberOfInputs == 0 && _numberOfOutputs == 0) {
            _data = abi.encodeFunctionCall(abi.encodeWithSignature("a()"), new uint[](5));
        } else if(_numberOfInputs!= 0 && _numberOfOutputs!= 0) {
            revert("Mutator cannot mutate");
        }
    }

    constructor(uint _length) returnsReturnsAddress(_length, 0) {
    }

    modifier nonReturning {
        _returns = false;
        _;
        _returns = true;
    }

    modifier returning {
        _returns = true;
        _;
        _returns = false;
    }

    modifier returnsReturnsNumber(uint _numberOfInputs, uint _numberOfOutputs) {
        if(_numberOfInputs > 0 && _numberOfOutputs == 1) {
            _data = abi.encodeWithSignature("returnsC()");
        } else if(_numberOfOutputs > 1) {
            revert("Mutator cannot return to caller from contract");
        }
    }

    modifier returnsReturnsAddress(uint _numberOfInputs, uint _numberOfOutputs) {
        if(_numberOfInputs > 0 && _numberOfOutputs > 0) {
            _data = abi.encodeWithSignature("returnsC()");
        } else if(_numberOfInputs == 0 && _numberOfOutputs == 0) {
            _data = abi.encodeFunctionCall(abi.encodeWithSignature("a()"), new uint[](5));
        } else if(_numberOfInputs!= 0 && _numberOfOutputs!= 0) {
            revert("Mutator cannot return to caller from contract");
        }
    }


    function setOutputData(uint _result, uint _numberOfInputs, uint _numberOfOutputs) public returnsReturnsAddress(_numberOfInputs, _numberOfOutputs) {
        return;
    }

    function returns() public returnsReturnsNumber(
