pragma solidity ^0.8.0;
interface IOwnable {
    modifier onlyOwner {
        require(msg.sender == _owner(), "Only owner");
        _;
    }
    address public _owner;
}
contract A a{
    uint public x;
    constructor (uint _x) {
        x = _x;
    }
}
contract B {
    uint public x;
    constructor (uint _x) {
        x = _x;
    }
}
contract C {
    uint public y;
    uint public _owner;
    constructor () {
        _owner = owner();
    }
    function getX() public view returns (uint) {
        return y + 1;
    }
    function getY() public view returns (uint) {
        return _owner + 1;
    }
}


contract Test is I,IOwnable{
    uint public i = 0;
    uint[] public v = new uint[](1);
    uint[10, 1] public calldataData = new uint[1][10];
    uint[20, 1] public calldataData2 = new uint[2][10];
    uint public calldataSlot;

    function push() public {
        calldataSlot = i++;
    }

    function eraseAll() public {
        for(uint4 i; i < 10; i++) {
            calldataData[i] = 0;
        }
    }
}
library SafeMath {
    function mul(uint a, uint b) internal pure returns (uint) {
        if (a==0) {
            return 0;
        }
        uint c = a * b;
        assert(c/a == b);
        return c;
    }
    function div(uint a, uint b) internal pure returns (uint) {

        uint c = a / b;

        return c;
    }
    function sub(uint a, uint b) internal pure returns (uint) {
        assert(b <= a);
        return a - b;
    }
    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        assert(c>=a);
        return c
