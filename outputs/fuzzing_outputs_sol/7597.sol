pragma solidity ^0.8.0;
contract Mut
{
    uint x;
    function fallback() public payable {
        x += 1;
        emit LogA();
        emit LogB();
    }
    function LogA() virtual public {
        System.Console.WriteLine("LogA");
    }
    function LogB() virtual public {
        System.Console.WriteLine("LogB");
    }
}
