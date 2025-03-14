pragma solidity ^0.8.0;
contract Test
{
    function modify(uint i)
    returns(string memory result) {
        i = 10;
        result = "10";
     }
}
