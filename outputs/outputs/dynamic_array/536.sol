pragma solidity ^0.8.0;
contract test16
{
    address[] internal myArray = new address[](1);
    uint256 m1;
    uint public v1;
    function test() public
    {
        uint256 m2 = 101;
        uint256 n2 = 100;
        myArray.push(address(this));
        m2 = m2 * 2;
        n2 = n2 + 100;
        m1 = m2;
        v1 = n2;
    }
}
