pragma solidity ^0.8.0;
contract modified{
    bytes5 public constant M = "0x6a";

    modifier ifnot(uint256 i) {
        if (i == 255) throw;
        _;
    }

    function test() public {
        if not(255 > 255){
            throw;
        }
    }
    function test2() public ifnot(1) {
        ifnot(1){
            throw;
        }
    }
}
