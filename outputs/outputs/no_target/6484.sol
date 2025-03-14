pragma solidity ^0.8.0;
contract modifierA{
    function f() public view returns (uint256){
        uint256 x;
        x -= 257;
        require(uint256(0)>x, "");
        return x;
    }
}
