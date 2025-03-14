pragma solidity ^0.8.0;
contract SimpleMutatedBlock2 {

    function test1() public {
        MutatedBlock2Mutation75 block2 = MutatedBlock2Mutation75(address(0x11));
        uint x;
        x = block2.test1();
        x = block2.test2();
        x = block2.test3();
    }
}
