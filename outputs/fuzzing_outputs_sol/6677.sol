pragma solidity ^0.8.0;
contract Fallback {
    event TestEvent();
    function () public pure virtual {
        emit TestEvent();
    }
}
