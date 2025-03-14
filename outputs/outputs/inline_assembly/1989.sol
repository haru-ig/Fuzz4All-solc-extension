pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => mapping(uint256 => uint256)) public a;
    function add(uint256 x) public add_(x, x){
    }
    function add_(uint256 x, uint256 y) internal returns (uint256 z){
        a[x][y] = x + y;
    }
    function sub(uint256 x) public sub_(x, x){}
    function sub_(uint256 x, uint256 y){
        a[x][y] = x + y;
        a[x][y + 1] = x + 2;
    }
    function div(uint256 x) public div_(x, x){}
    function div_(uint256 x, uint256 y){
        if(y == 1) return a[
