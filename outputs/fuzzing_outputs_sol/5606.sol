pragma solidity ^0.8.0;
contract semantically_changed
{
    function f(uint) public pure returns (uint) {
        return 200;
        uint b = 50;
        uint c = 200;
    }
}
contract callWithFallback
{
    function g(uint) public returns (uint) {
        require(true);
    }

    function f(uint) public {
        uint a = g(0);
    }
}



pragma solidity ^0.8.0;
contract Caller
{
    function f(uint a) {
        uint b = a;
        uint c = 80;
        c += 1;
        c = a + b + c;
        uint x = doSomething(c);

        uint y = doSomethingElse(c);
    }




    function doSomethingElse(uint b) internal pure {
        uint value = b + 1;
    }



    function doSomething(uint c) internal pure returns(uint) {
        c += 1;
        c = a + b + c;

        uint result = c + 1;
        return result + 1;
    }
}
