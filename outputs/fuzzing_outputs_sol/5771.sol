pragma solidity ^0.8.0;
contract semanticallyequivalent32
{
    uint public z__;
    uint public z;
    modifier z_less_than_100() {
        require(z<100);
        _;
    }
    constructor(){
          z__ = 100;
    }
    function test() public payable z_less_than_100{
        z++;
        z++;
    }
}
