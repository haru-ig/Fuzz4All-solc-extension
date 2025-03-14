pragma solidity ^0.8.0;
contract MutatedStorage5 {
    constructor() {}
    function mutate() public {
        MutatedStorage4 storage storage4 = storage4();
        MutatedStorage4 storage storage4mut = storage4;
        storage4mut.mutate();
    }
<fim_middle>    function storage4() internal pure returns (MutatedStorage4 storage) {
        return MutatedStorage4(0x0);
    }
}
