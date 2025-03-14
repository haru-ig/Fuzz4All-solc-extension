pragma solidity ^0.8.0;
contract modifierB2{
    function f() public view returns(uint256){
        if(false) return 42;
        return 0;
    }
}
