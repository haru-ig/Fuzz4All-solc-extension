pragma solidity ^0.8.0;
contract M99{
    function isEqual(uint x,uint y) public pure returns (bool){
        return (x==y);
    }
    function greaterEqual(uint x,uint y) public pure returns (bool){
        return (y >= x);
    }
}
