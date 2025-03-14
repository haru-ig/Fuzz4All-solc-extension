pragma solidity ^0.8.0;
interface Caller8
{
        event e(uint x);
        mapping(uint => uint) x;
        function c() external { emit e(x[msg.sender]); }
}
contract mapmap2 {}
