pragma solidity ^0.8.0;
contract TestFallback3
{
    address public to, from;
    uint8 public toLen;
    uint8 public fromLen;
    constructor(uint8 _fromLen, uint8 _toLen)
    {
        from = msg.sender;
        toLen = _toLen;
        fromLen = _fromLen;
    }
}
