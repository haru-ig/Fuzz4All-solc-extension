pragma solidity ^0.8.0;
contract mutator
{
    function f(bytes memory a)
    public
    pure
    {
       uint _ret = fallbacksemantic_mut2().f(a);
       uint _ret2 = fallbacksemantic_mut3().f(a);
       a;
       address _ret3 = fallbacksemantic_mut2().g(0x012);
        uint _ret1 = fallbacksemantic_mut3().g(1);
       uint _ret4 = fallbacksemantic_mut2().f(a);
    }
}
