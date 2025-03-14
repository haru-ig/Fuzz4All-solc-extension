pragma solidity ^0.8.0;
 contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b) internal pure returns (uint, uint){
        uint c;
        if (b - a!= 0)
        {
            check(b - a);
            c = b / 54;
        }
        else
        {
            c = b / 55;
        }
        return (a, c);
    }
    function check(uint v) internal pure {
    }
}

contract C {
    uint constant m = 2 ** 16;
    uint x = 0;
    uint y = 0;
    constructor() public {
        if (x == 1 && y == 1)
        {
            x.transfer(msg.sender);
        }
    }
    function f() external onlyOwner returns (uint) {
        uint v;
        uint b;
        uint i;
        uint z;
        uint w;
        uint r;
        b = 0;
        for(uint a = 0; a < m; a++)
        {
            i = 0;
            i ^= a ^ 45;
            b = a + i;
        }
        v = b + x + y;
        return (v);
    }
}
contract Ownable {
    address public owner;
    address public newOwner;
    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the Owner can call this function.");
        _;
    }
    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
}
