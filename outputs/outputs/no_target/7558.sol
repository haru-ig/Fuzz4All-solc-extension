pragma solidity ^0.8.0;
contract Mutator {
    uint public a;
    uint256 public b;
    uint16 public c;
    uint public d;
    modifier setA(uint x) {
        a = x;
        _;
    }
    modifier setB(uint16 x) {
        b = x;
        _;
    }
    modifier setC(uint d) {
        c = d;
        _;
    }
    modifier setD(uint c) {
        d = c;
        _;
    }
    function mutate() public view returns (uint256) { setA(7); setC(1); setB(9999); setD(1); return (uint(a*d)/b+c); }
    function getA() public view returns (uint) { return a; }
    function getB() public view returns (uint16) { return b; }
    function getC() public view returns (uint) { return c; }
    function getD() public view returns (uint) { return d; }
}

pragma solidity ^0.8.0;
contract Originator {
    address public owner;
    uint public x;
    uint16 public y;
    uint public z;
    constructor () public { owner = msg.sender; x = 1; y = 1; z = 1; }
    modifier onlyOwner() {
        require(msg.sender == owner, 'Error: caller is not the owner');
        _;
    }
    modifier setX(uint x) { z = x; _; }
    modifier setY(uint16 y) { z = y; _; }
    modifier setZ(uint z) { z = z; _; }
    function set(uint x, uint y, uint z) public onlyOwner setX(x) setY(y) setZ(z) external {}
    function get() public view returns (uint x, uint16 y, uint z) { x = x; y = y; z = z; }
}

pragma solidity ^0.8.0;
contract Saver {
    uint public x;
    uint public y;
    constructor() public {
        x = 1;
        y = 1;
    }
    modifier once {
        assembly { if eq(x, 1) { x := 0 } }
        _;
    }
    function set() public once {
        x
