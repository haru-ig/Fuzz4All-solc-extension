pragma solidity ^0.8.0;
contract MutatedTest
{
constructor()public
{
}
}
{
    uint256[7] memory arr;
    bytes8[9][9] memory barr ;
}


pragma solidity ^0.8.0;
contract constructorTest
{
constructor()public
{
    constructor(uint256[] memory p, bytes8[] memory q)=>{
        barr = [p, q];
    }
    constructor(bytes8 p, bytes8 q) {
        uint256[] memory ps;
        ps.push(16);
        constructor(ps, new bytes8
