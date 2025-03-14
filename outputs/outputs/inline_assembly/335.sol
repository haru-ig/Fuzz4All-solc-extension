pragma solidity ^0.8.0;
contract F2 {
    uint constant my_constant = 0;
    function f() public returns (uint){
        return add_internal(my_constant, divide(2, 5));
    }
}
