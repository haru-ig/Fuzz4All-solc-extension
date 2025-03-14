pragma solidity ^0.8.0;
contract ArraysAddress
{
    string public value;
    uint public index;
    uint public index2;
    address[] public array_address;
    function getAddress() public view returns (address)
    {
        return array_address[_a];
    }
    function getValue() public view returns(string memory)
    {
        return value;
    }
    function setValue(string memory a) public
    {
        value = a;
    }
    function append(string memory a) public
    {
        array_address.push(address(uint(a)));
    }
    function increaseValue(uint a) public view returns(uint ret)
    {
        ret = index2 + a + index2;
    }
    function increaseValue_uint(uint a) public view returns(uint ret)
    {
        ret = index2 + a + index2;
    }
}
