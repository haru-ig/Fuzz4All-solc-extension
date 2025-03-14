pragma solidity ^0.8.0;
contract CodedABI0{
    event SimpleEvent(
        uint8 _v,
        uint _o,
        address _p,
        bytes _s,
        string _n
    );

    function testEvent(uint8 v, uint o, address p, bytes s, string n) public{
        emit SimpleEvent(v, o, p, s, n);
    }
    function testEvent(uint1 o, address p, bytes32 s, string memory n) public{
        emit SimpleEvent(0, o, p, s, n);
    }
    function testEvent(address p, bytes memory s, string memory n) public{
        emit SimpleEvent(0, 0, p, s, n);
    }
    function testEvent(address p, bytes32 s, string memory n) public{
        emit SimpleEvent(0, 0, p, s, n);
    }
    function testEvent(address p, bool memory s, string memory n) public{
        emit SimpleEvent(0, 0, p, s, n);
    }
}
