pragma solidity ^0.8.0;
contract ContractArray {
    address payable[] arrayA;
    uint[] arrayB;
    event Added(address add);
    event Removed(uint i);
    event Changed(address add, uint i);
    uint[] public values;
    constructor() {
        values.length;
    }
    function change() public {
        values[0];
        emit Changed(tx.origin, 0);
    }
}
