pragma solidity ^0.8.0;
contract SemanticMutation16
{
    function a(int256 n) public pure returns(int256) {

        return add(-n,-n);
    }
}
