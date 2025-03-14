pragma solidity ^0.8.0;
contract MutatedEvmFabric is EvmFabric, MutatedFabric {}

contract EvmArrayReencoding {
    uint private immutable constant _arrayLength = 4;
    uint public constant _arrayValueA = 42;
    uint public constant _arrayValueB = 430;
    uint public constant _arrayValueC = 22300;
    uint private _arrayValueD;

    constructor(uint[] memory aArr, uint _b, string memory _c) {
        require(aArr.length!= 0);
        x = aArr;
        y = _b;
        z = _c;
        evm_b = _c;
        evm_array = aArr;
        evm_b = _c;
    }
}
