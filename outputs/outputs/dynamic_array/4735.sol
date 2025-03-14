pragma solidity ^0.8.0;
contract Test {
    uint256[255] public store;
    function MutateData() public {
        for (uint Idx = 0; Idx < 255; Idx++)
            store[Idx] = Idx + 1;
        require(store[254] == 254, "Fail 1");
    }
}
