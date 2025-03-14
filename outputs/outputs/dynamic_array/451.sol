pragma solidity ^0.8.0;
contract test7
{
}

contract test8
{
    constructor() public
    {
    }

    function myFunction() public
    {
        test7();
        test6 storage s = test6(address(this));
        s.myArray.push(1);
        s.myArray.push(2);
    }
}

contract test9
{
    address testAddress;

    constructor() public
    {
        testAddress = address(this);

        bytes memory bytes1 = new bytes(1);
        bytes memory bytes111 = new bytes(1);
        bytes[] memory bytesArray = new bytes[](1);

        bytesArray[0] = bytes1;
        bytesArray[1] = bytes(1);
        bytesArray[2] = bytes1;
    }

    function getAddress() public view returns (address)
    {
        return testAddress;
    }
}
