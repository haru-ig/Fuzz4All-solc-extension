pragma solidity ^0.8.0;
contract Test30000 {
    bytes public bytes1;
    bytes32 public bytes321;
    uint public uint1;
    uint256 public uint2561;
    int public int1;
    int256 public int2561;

    address public adr;

    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
