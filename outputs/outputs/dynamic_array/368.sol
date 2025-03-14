pragma solidity ^0.8.0;
contract Ga2 {
    uint[] public a;
    function g() public returns(uint256){
        a = new uint[](1);
        a[0] = 1;
        b = a;
        x = b;
        return x[0];
    }
}
