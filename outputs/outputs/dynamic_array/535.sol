pragma solidity ^0.8.0;
contract test1
{
    uint256[] internal myArray = new uint256[](1);
    uint k = 1;
    uint public v = 10;
    function test() public
    {
        v++;
        k = 2;
        myArray.push(k);
    }
}

pragma solidity ^0.8.0;
contract test2
{
    bytes32[] internal myArray = new bytes32[](1);
    uint256 k = 1;
    string v = "abc";
    function test() public
    {
        k = 2;
        myArray.push(k);
        v = "abc";
    }
}
