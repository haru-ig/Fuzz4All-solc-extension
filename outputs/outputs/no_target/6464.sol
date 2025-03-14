pragma solidity ^0.8.0;
contract modifierB2{
    function f() public view returns(uint256){
        uint256 r;
        if(0>r)
            return 42;
        return r;
    }
}
