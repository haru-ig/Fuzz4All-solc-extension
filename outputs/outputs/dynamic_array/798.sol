pragma solidity ^0.8.0;
contract Test2{
    function isValid(bool _x) public view returns(uint256) {
        return isTrue(_x)? 1 : 0;
    }
}
