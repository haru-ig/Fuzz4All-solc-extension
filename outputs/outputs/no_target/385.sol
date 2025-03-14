pragma solidity ^0.8.0;
contract Semantic2Changed {
    uint x;
contract Semantic2AfterChange {
    uint y;
    function balance2() public pure returns(uint){
        uint x = 46;
        y = x + x + x;
        return x;
    }
}
