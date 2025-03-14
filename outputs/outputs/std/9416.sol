pragma solidity ^0.8.0;
contract MuteString
{
    string public _a;
    string[10] public _values;
    function mutateA(string memory s) public returns(string memory)
    {
        string memory temp = "aaa";
        return temp + ":" + s;
    }
    function mutateB(string memory a, string memory b, string memory x) public returns(string memory)
    {
        string memory temp = "aaa";
        return a + ":" + b + ":" + x + ":" + temp + ":" + temp;
    }
}
