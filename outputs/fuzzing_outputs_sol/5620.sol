pragma solidity ^0.8.0;
contract mutated
{
    function p(uint x, uint y, uint z) public pure {
        uint a = 0;
        if (x < y && x > z) { a++; };
    }
}

pragma solidity ^0.8.0;
contract lowlevel
{
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract mutated_fallback
{
    function f() external payable {
        require (msg.value == 0);
        fallback();
    }
}
