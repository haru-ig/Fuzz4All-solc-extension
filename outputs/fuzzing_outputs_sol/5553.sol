pragma solidity ^0.8.0;
abstract contract my_fallback
{
    function fallback() external payable {
        require (false);
    }
}
contract Caller
{
    fallbacksemantic_mut5 public sem;
    fallbacksemantic_mut6 public sem4;
    fallbacksemantic_mut3 public f3;
    my_fallback public f32;
    fallbacksemantic_mut13 sem5;


    function f() public payable
    {
        sem.f(
            bytes("0x"));
    }
    function f2() public pure
    {
        sem4.g(1);
        sem4.g(2);
    }
    function f3() public
    {
        sem5.f(3);
        f32();
    }

    function f32() public
    {
        bytes memory arr;
        uint[] memory arr2;
        bytes memory b = new bytes(1);
        arr.push(b);
        for (uint i = 0; i < arr.length; i ++)
        {
            arr2.push(i);
        }
    }
}
