pragma solidity ^0.8.0;
contract MutatedTest {
    function f(uint256 x) internal view returns (uint256 x_) {
        if (x!= 1){
            x_ = 0;
        }
        x_ = x;
    }
}

contract OldABIv1
{
}
contract NewABIv1
{
    function f() public view returns (uint256)
    {
        return 0;
    }
}
