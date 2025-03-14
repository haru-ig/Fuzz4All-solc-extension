pragma solidity ^0.8.0;
contract SimpleFallBack {
    address payable public owner;
    address public anotherAddress;
    uint public fallback;
    constructor(uint _fallback)
        public
    {
        owner = payable(msg.sender);
        fallback = _fallback;
    }
    function fallback()
        external
        payable
        returns (uint)
    {
        assert(fallback == 1);
        revert("Fallback failed");
    }
}
