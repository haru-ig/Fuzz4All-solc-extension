pragma solidity ^0.8.0;
contract Mutated3 {
    bytes32 public immutable EMPTY_BYTES_32 = "0x00";
    constructor(bytes32 _b) public{
        b = _b;
    }
    bytes32 public b;
    modifier onlyBytes32(bytes32 _b) {
        require(!_b.eq(0) &&!_b.eq(EMPTY_BYTES_32), "No Empty Bytes");
        _;
    }
    function get() public override view returns (bytes32) {
        return a + b;
    }
    function set(bytes32 _b) public onlyBytes32(_b) {
        b = _b;
    }
}
contract Mutated4 {
    uint256 public a;
    uint256 public b;
    constructor(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
    }
    modifier onlySetA(uint256 _a) {
        require(msg.sender == a, "Only SetA");
        _;
    }
    uint256 public override get() public view returns (uint256) {
        return a + b;
    }
    function setA(uint256 _a) public override onlySetA(_a) {
        a = _a;
    }
    function setA2(uint256 _a) public view onlySetA(_a) {
        a = _a;
        emit SetA(msg.sender, _a);
    }
}
