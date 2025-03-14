pragma solidity ^0.8.0;
contract Equivalent2{
    uint8 constant PRECISION = 10**10;
    uint8 public constant MIN_PRECISION = 0;
    uint8 public constant MAX_PRECISION = PRECISION;
    mapping(address => uint256) public balances;
    function getToken(address _token) public view returns (uint256 _amount) {
        return balances[_token];
    }
    function addToken(address _token, uint256 _added) public {
        balances[_token] += _added;
    }
}
