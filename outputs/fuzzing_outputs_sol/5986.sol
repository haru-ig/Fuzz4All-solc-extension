pragma solidity ^0.8.0;
contract Modifer {
    uint constant number = 5;
    function add() public view returns (uint){
        return number + 1;
    }
}
