pragma solidity ^0.8.0;
contract Injection_02
{
    constructor(uint w1_) public
    {
        set(w1_);
        set(w1_, w1_, w1_);
    }
    function  set(
        uint w1,
        uint w2,
        uint w3
    )
        public
    {
    }
    function test() public pure {
    }
}
