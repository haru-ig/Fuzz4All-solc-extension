pragma solidity ^0.8.0;
contract Mutate3
{
    bytes32 public myKey;
    mapping (string => uint) public myMap;

    event MyEvent(string message);

    function setMyKey(string memory _key) public
    {
        myKey = bytes32(_key);
    }

    function getMyKey(string memory _key) public
        view
        returns (bytes32)
    {
        return myKey;
    }

    function myFunction1(bytes32 key) public
    {
        myMap[key] = 1;
    }
}
