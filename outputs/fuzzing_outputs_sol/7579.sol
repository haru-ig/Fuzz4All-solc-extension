pragma solidity ^0.8.0;
contract UnMutedFallback
{

    function fallback() external pure returns (bool)
    {
        msg.data;
    }
}
contract Caller {
    function f() public pure {
        MutedFallback muted = Mut(0x9A7A0b147D36079076611865691B54713025DAc6);
        if(muted.fallback()) revert();
        UnMutedFallback unmuted = Uni(0x9A7A0b147D36079076611865691B54713025DAc6);
        if(!muted.defaultFallback()) revert();
        muted."fallback()"(1);
        unmuted."fallback()"(1);
        (bool success, ) = unmuted.call.value(1){data:"438982a840".repeat(200000)};
        if(!success) revert();
    }
}
