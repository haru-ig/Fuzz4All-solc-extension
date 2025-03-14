pragma solidity ^0.8.0;
contract ChangeableStorage4 {
    FallbackMutatedStorage5 private self;
    constructor() public {
        self = new FallbackMutatedStorage5();
        self.changeNumber(42);
    }
    function getNumber() public view returns (uint) {
        return self.getNumber();
    }
}
