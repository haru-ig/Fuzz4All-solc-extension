pragma solidity ^0.8.0;
contract Main2 {
    event E (uint256 value);
    modifier noChange() {
        uint32 i;
        for (i = 0; i < 4; i++) {
            E(i);
        }







        asm("nop");
        asm("nop");
        asm("nop");
    }
    function test(address addr) public {
        addr.call(new bytes(0));
    }
}
