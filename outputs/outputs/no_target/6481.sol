pragma solidity ^0.8.0;
contract modifierB{
    function c() public view returns (uint256){
        uint256 x;
        x -= 257;
        bytes1 b="256";
        if (uint256(0)>x||bytes1(0)<=b)
            return c();
        return x;
    }
}
