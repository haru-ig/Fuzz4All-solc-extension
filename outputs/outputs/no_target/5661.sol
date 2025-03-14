pragma solidity ^0.8.0;
contract Coc{
    function g1(uint p1, uint p2) public view returns(uint){
        return p1 * p1 + p2 * p2 - p1;
    }
}
