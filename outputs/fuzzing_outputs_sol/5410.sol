pragma solidity ^0.8.0;
contract mutatedfallback
{
    function fallback() public pure {}
}


pragma solidity ^0.8.0;
contract b
{
    function fun() public pure payable nonReentrant returns (bool) {}
    function fun() public pure payable nonReentrant  {}
    function fun() public pure payable nonReentrant {}
}

pragma solidity ^0.8.0;
contract b
{
    function fun() public pure payable nonReentrant returns (bool) {}
    function fun() public pure payable nonReentrant  {}
    function fun() public pure payable nonReentrant {}
}
