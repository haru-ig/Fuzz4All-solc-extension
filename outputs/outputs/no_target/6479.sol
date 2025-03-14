pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns (uint256){
        uint256 x;
        x -= 257;
        if (uint256(0)>x)
            return 42;
        return x;
    }
}
