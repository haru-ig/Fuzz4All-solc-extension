pragma solidity ^0.8.0;
contract TestMutated73 {
    function test() public pure returns (address) {
    if(false)
    {
        address x;
        if (false)
        {
            x = 1;
        }else x = this;
        return x;
    }else return this;
}
