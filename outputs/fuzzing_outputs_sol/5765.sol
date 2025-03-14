pragma solidity ^0.8.0;
contract semanticallyequivalent28
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_100(uint __z__) {
        require(__z__ < 100);
        _;
    }
    constructor(uint _z__){
          z__ = _z__;
    }
    function test28(uint _z__) public payable z_less_than_100(_z__){
        while (z__ < 5) {
            z--;
         }
        x++;
    }
}
