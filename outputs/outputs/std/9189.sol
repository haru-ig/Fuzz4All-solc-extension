pragma solidity ^0.8.0;
contract ModifiedContract is ExistingContract {
    bool modified;
    constructor() {
        modified = false;
    }
    function checkArray() public view returns (uint256) {
        if (modified) {
            return 45;
        }
        return 123;
    }
    function changeArray(uint256 x) public {
        memoryArray.push(x);
        modified = true;
    }
}
