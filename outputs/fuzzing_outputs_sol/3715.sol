pragma solidity ^0.8.0;
contract Example9 {
    uint count = 0;
    uint storedCount = 0;
    constructor() {

        increaseCount();
    }
    function increaseCount() private {
        count = count + 1;

        storedCount = increaseCount();
    }
    function decreaseCount() public view returns (uint) {
        return count;
    }
    function increaseBy1(uint x) public pure returns (uint) {
        return storedCount + x;
    }
}
