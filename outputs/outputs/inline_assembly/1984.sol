pragma solidity ^0.8.0;
import { NewY3 } from './NewY3.sol';
contract NewY4 {
    mapping(uint256 => uint256) public a;
    mapping(uint256 => uint256) public b;
    function add(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        a[x] = x * 2+10;
        a[x2] = x+a[x] + 1*x;
        b[y] = x+a[x2] + x+a[x] + x*x;
    }
    function sub(uint256 x, uint256 y) public{
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2*x;
        a[x2] = x+2;
        a[
