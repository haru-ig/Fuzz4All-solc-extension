pragma solidity ^0.8.0;
contract modifierB{
    function f() public view returns (uint256){
        uint256 x;
        x -= 257;
        require(uint256(0)>x, "");
        function myFunction(uint256 a, uint256 b){
            a -= 2;
        }
        myFunction(x, 0);
        return x;
    }
}
