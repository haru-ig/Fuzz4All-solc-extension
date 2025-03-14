pragma solidity ^0.8.0;
contract Qc
{
    function init() public pure {
        uint constant init = 17;
        this.setBc2(2 * init);
    }
   function setBc2(uint newValue) public pure {
        this.rBc = this.rBc2 + newValue;
        this.rBc2 = newValue;
    }
}
