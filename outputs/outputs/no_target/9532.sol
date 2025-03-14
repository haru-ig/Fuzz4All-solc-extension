pragma solidity ^0.8.0;
contract AbiCoder {
    event MyEvent(uint indexed arg);

    function decode(bytes memory input) public pure returns(uint arg) {
        return abi.decode(input, (uint));
    }

    function encode(uint arg) public pure returns(bytes memory) {
        return abi.encode(arg);
    }
}
contract Example{
    Interface16 public test;
    AbiCoder public abi;
    event MyEvent(uint i);

    constructor (Interface16 _i, AbiCoder _abi) {
        test = _i;
        abi = _abi;
    }
}
