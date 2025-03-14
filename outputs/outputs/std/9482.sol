pragma solidity ^0.8.0;
contract Contract1 is Contract2 {
    constructor() public {
        Contract2 memory test = new Contract2();
        test.setstring("new");
    }
}
