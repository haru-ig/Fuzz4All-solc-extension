pragma solidity ^0.8.0;
contract Test30005 {
    bytes32 public aHash;
    address private aAddress;
    uint256 public a;
    uint256 public b;
    uint256 public c;
    bytes32 public bHash;
    address private cAddress;
    constructor (address _a, address _b, uint256 _c) public {
        emit Log();
        aAddress = _a;
        aHash = keccak256(abi.encodePacked(_a));
        bAddress = _b;
        bHash = keccak256(abi.encodePacked(_b));
        cAddress = _c;
        c = _c;
        a = 1;
        b = 1;
    }
    fallback () external {
        emit Log();
    }
    event Log ();
}
contract Test30006 {
    bytes32 public aHash;
    uint256 public c;
    bytes32
