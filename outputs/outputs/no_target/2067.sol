pragma solidity ^0.8.0;
contract Arithmetic {
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function get() public view returns (uint) {
        return a;
    }
    function subZero() public  {
        a = a - 0;
    }
    function divZero() public  {
        a = a / 0;
    }
}
