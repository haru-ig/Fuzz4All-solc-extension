pragma solidity ^0.8.0;
contract All {
    uint256 x;
    function noChange() public pure { }
    function changeX(address a) public pure { }
    function doit() public pure {
        x = 1;
        x = x + 1;
    }
}
