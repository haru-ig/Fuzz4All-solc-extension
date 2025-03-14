pragma solidity ^0.8.0;
contract myContract {
    constructor() {
        uint x;
        fallbackValue = x;
    }
}
contract myFallback {
    fallbackValue = 1;
}
contract myReceive {
    uint public received;
    constructor() payable {
        received = msg.value;
    }
}
contract Caller {
    function call0() external payable {
        uint x = 1;
        myContract _myContract = new myContract();
    }

    function call1() external payable {
        uint x = 2;
        uint y = _myContract() + 1;
    }

    function call2() external payable {
        uint x = 3;
        uint[1][29242429243429] storage _x = new uint[](20);
        uint y = _myContract();
    }
}
