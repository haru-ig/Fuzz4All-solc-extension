pragma solidity ^0.8.0;
contract nonsemanticallyequivalent
{
    function f(uint) public pure {}
}

library Fallback {
    fallback function()
    public
    {
        if (!msg.value) {
            eth fallback;
        }
        if (!msg.data) {
            tx fallback;
        }
    }

    fallback receive()
    public
    {
        if (!msg.value) {
            eth fallback;
        }
        if (!msg.data) {
            tx fallback;
        }
    }
}
