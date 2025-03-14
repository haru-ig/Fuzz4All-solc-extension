pragma solidity ^0.8.0;
contract semanticallyequivalent19
{

    fallback () external payable {
        throw;
    }
    modifier x_greater_than_0() {
        require(x>y, "Invalid zero condition");
        _;
    }
    function _x_less_or_equal_0() public {
       x = 1333513498;
    }
    function test() public payable x_greater_than_0{
        _x_less_or_equal_0();
    }
}
