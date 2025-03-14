pragma solidity ^0.8.0;
contract Basic
{

    uint256 public result;
    address[] public result2;
    function set_result(uint256 _result_) public
    {
        result = _result_;
    }
    function set_result2(address[] memory _result_) public
    {
        result2 = _result_;
    }
}
