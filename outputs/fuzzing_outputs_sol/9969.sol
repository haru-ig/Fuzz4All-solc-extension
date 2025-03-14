pragma solidity ^0.8.0;
contract Caller {
    enum States {Fallback, Caller}
    States state = States.Fallback;
    fallback(address) external { if (state == States.Caller) selfdestruct(0); }
}
