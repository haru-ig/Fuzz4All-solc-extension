pragma solidity ^0.8.0;
contract B {
    uint z;
    uint x;
    uint public y;
    constructor(uint _z) public {
        z = _z;
    }
    uint public z_;
    function add() public {
        z_ = uint(z / 100);
        z = 0;
        x += uint(z - z_ * 100);
    }
    function sub() public {
        z_ = uint(z / 100);
        z = 0;
        z -= 0x100;
        x += uint(z - z_ * 100);
    }
    function mul() public {
        uint multiplier = uint(safeSub(z, 0));
        multiplier *= 250;
        z_ = uint((safeAdd(z_, multiplier)) / 250);
        x += uint(z - z_ * 100);
    }
    function safeAdd(uint a, uint b) public pure returns (uint c) { c = a + b; require(c >= a, 'SafeMath: addition overflow'); }
    function safeSub(uint a, uint b) public pure returns (uint c) { c = a - b; require(b <= c, 'SafeMath: subtraction overflow'); }
    function safeDiv(uint a, uint b) public pure returns (uint) { require(b > 0, "SafeMath: division by zero"); return a / b; }
}
