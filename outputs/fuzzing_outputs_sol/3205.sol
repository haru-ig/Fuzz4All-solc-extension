pragma solidity ^0.8.0;
contract Fallback {
    function Fallback()
        public
        payable


    {
        if (msg.value >= 1)

            emit(x);
        else

            callFallback();
    }
    uint256 x = 0;
    function callFallback()
        public
        payable
    {
        emit x;
    }
}
