pragma solidity ^0.8.0;
contract Mutated3{
    bytes32[] public a;
    address public b;
    address public c;
    address public d;
    uint256 public x;
    uint256 public p;
    uint256 public q;
    uint256 public r;
    uint256 public s;
    constructor(){
        a = new bytes32[](1);
        a[0] = '1';
        b = address(0);
        c = address(0);
        d = address(0);
        x = 1;
        p = 1;
        q = 1;
        r = 1;
        s = 1;
        p = 0;
    }
    function mutated13() public returns (bytes32) {
        return a[0];
    }
    function mutated14() public returns (bytes32, bytes32, bytes32) {
        return a[0], a[0], a[0];
    }
    function mutated15() public returns (address) {
        return b;
    }
    function mutated16() public returns (address,address,address) {
        return b, d, c;
    }
    function mutated17() public returns (uint) {
        return x;
    }
    function mutated18() public returns (uint,uint,uint) {
        return x, p, q;
    }
    function mutated19() public returns (uint,uint,uint,uint) {
        return s, r, p, q;
    }
    function mutated20() public returns (uint,uint) {
        return s*r, p+q;
    }
    function mutated21() public returns (uint) {
        return p|q;
    }
}
