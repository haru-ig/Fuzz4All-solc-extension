pragma solidity ^0.8.0;
contract Caller {
    function Call(uint a) public {
        emit Log(a);
    }

    event Log(uint a);
}
