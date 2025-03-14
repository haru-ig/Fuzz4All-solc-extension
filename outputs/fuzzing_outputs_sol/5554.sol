pragma solidity ^0.8.0;
contract mutatedsemantic_mut1
{
    function f() public pure {

        uint r;
        {
            fallbacksemantic_mut2.f(bytes{});
        }
        {
            fallbacksemantic_mut2.f(bytes{1});
            fallbacksemantic_mut3.g(1);
        }
    }
}
