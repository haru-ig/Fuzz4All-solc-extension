pragma solidity ^0.8.0;
contract fallbacksemantic
{
    fallbacksemantic_mut2 f02;
    fallbacksemantic_mut3 f03;
    fallbacksemantic_mut3 f04;
}
contract Fallbacksemantic {
    fallbacksemantic f_mutated;
}

contract Caller
{
  function send() external payable {}

    fallbacksemantic nonmut_fallbacksemantic
    {
    bytes memory _mybytes = "My bytes";
    f_mutated.f(_mybytes);
    }

    fallbacksemantic mut_fallbacksemantic ()
    {
    bytes memory _mybytes = "My bytes";
    f02.f(_mybytes);
    }

    fallbacksemantic mutout_fallbacksemantic () constant
    {
    bytes memory _mybytes = "My bytes";
    f03.g(2);
    uint _b = f03.g(2);
    f04.g(2);
    _mybytes = f04.g(2);
    bytes memory _mybytes_2 = f04.g(2);
   }
}
