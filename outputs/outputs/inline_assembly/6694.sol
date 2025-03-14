pragma solidity ^0.8.0;
contract MixedContactsExample502 {
    uint56 public x = 10;
    uint56 a = 7;
    uint56 b = 68;
    address payable x3;
    uint56 public c = 948;
    uint56 public d = 87;
    bool public x5;
    uint56 public e = 7;
    event SoMEvent(
        uint value,
        uint64 count,
        address x4,
        address x6,
        uint8 x7,
        uint8 x8,
        uint8 x9,
        uint8 x10,
        uint8 x11
    );
    function doSomething() public returns (uint64) {
        a = a + 5;
        x5 = true;
        DUP3(a, b, d);
        a = a + DUP2(b, 5);
        return x / 3;
    }
    function sumTwoParameters() public view returns (uint56) {
        return b + d;
    }
    function multiplyTwoParameters() public view returns (uint56) {
        return a + c;
    }
    function setX5(bool _x5) public {
        require(msg.sender == x3, "must be sender");
        x5 = _x5;
    }
}





pragma solidity >=0.8.0;
pragma abicoder v2;

interface MixedContactsExample501Interface
{


    function someOperation() external returns (address payable);
}


contract MixedContactsExample500 is MixedContactsExample501Interface
{
    address private _from;
    uint56 private _g;
    uint56 private _e;
    event SoMEvent(
