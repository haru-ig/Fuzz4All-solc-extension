pragma solidity ^0.8.0;
contract test24
{
    address payable[] public myArray;
    uint256 m1;
    uint public v1;
    function test() public
    {
        uint256 m2 = 101;
        uint256 n2 = 100;
        uint256 a = 2**20;
        uint256 b = 3;
        myArray = new address[](5);
        for (uint i = 0; i < myArray.length; i++)
        {
            address a = payable(new (bytes4(keccak256('constructor()')))());
            myArray[i] = a;
        }
        m2 = m2 + 222;
        m1 = m2 - b;
        n2 = a * b;
        m1 = m2;
        v1 = n2;
    }
}
