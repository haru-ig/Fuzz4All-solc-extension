pragma solidity ^0.8.0;
contract Array_42_old2 {
    uint256[] public array;
    uint64[] public adr;
    uint64[] public a1;
    uint64[] public b;
    uint64[] public c;
    uint64[] public d;
    uint64[] public e;
    uint64[] public f;
    uint64[] public g;
    uint64[] public h;
    uint64[] public i;
    uint64[] public j;
    uint64[] public k;
    uint64[] public l;
    address[] public m;
    uint256 count;
}
contract Array_42 {
    Array_42_old public innerContract;
    uint64 innerAddr;
    bytes32 public test;
    uint256 public x;
    uint256 innerX;
    mapping(uint256=>uint256) public a;
    mapping(uint256=>uint256[]) public b;
    mapping(uint256=>address) public c;
    address public d;
    bool e;
    uint64[] f;
    uint64[] public g1;
    uint64[] public g2 =[];
    uint64[] public h1 =[][0];
    uint64[] public h2;
    uint256[] public i1;
    uint256[] public i2;
    uint256[] public j1;
    uint256[] public j2;
    uint256[] public k1;
    uint256[] public k2;
    uint256[] public l1;
    uint256[] public l2;
    uint256[] public m1;
    uint256[] public m2;
    uint256[] public n1;
    uint256[] public n2;
    uint256[] public o1;
    uint256[] public o2;
    address[] public p1;
    address[] public p2;

    constructor(Array_42_old innerContractAddr, bytes32 a, uint256 x) {
        try innerContractAddr.set(innerContractAddr, x) should return {} catch(e) {

        }
        innerContract = innerContractAddr;
        test = a;
        x = x;
        innerX = 0;
        innerAddr = 0;
    }
    modifier only() {
        assembly {mstore(0x0, mload(0x0))}
        assembly {
            mstore(0x0, 0x0)
            mstore(0x0, add(mload(0x0), 0x
