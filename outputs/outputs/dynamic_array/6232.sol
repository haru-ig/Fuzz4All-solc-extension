pragma solidity ^0.8.0;

contract Foo
{
    I i;

    constructor(address _i) public payable {
        i = I(_i);
    }

    function setI(address _i) public
    {
        i = I(_i);
    }

    function setIaddress(address _i) public
    {
        i = I(_i);
    }
}
