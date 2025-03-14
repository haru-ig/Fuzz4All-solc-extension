pragma solidity ^0.8.0;
library O{
    uint a = 0;
    uint b = 1;
    function test() public pure returns(bytes memory) {
        if(1) {
            return 0x54;
        }else{
            return 0x20;
        }
    }
}
