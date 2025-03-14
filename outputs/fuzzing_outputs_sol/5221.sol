pragma solidity ^0.8.0;
contract MyContract
{
        uint x;
        modifier m()
        {
            x++;
            if (x<2) revert();
            _;
        }
        function c() public m()
        {
            assert(x>0);
        }
}
contract C23 {
    address public owner;
    constructor () {
        owner = msg.sender;
    }
    function c23() public {
        assert(x>0);
    }
}
