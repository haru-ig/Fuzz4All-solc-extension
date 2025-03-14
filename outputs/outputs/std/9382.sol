pragma solidity ^0.8.0;
contract Mutate5
{
    address _account;
    function mutateA(uint256 a, uint256 _x, uint256 b) public returns(uint256) {
        return _x * 2;
    }
}
