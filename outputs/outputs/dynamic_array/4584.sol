pragma solidity ^0.8.0;
contract MyContract {
    MyData[] bbb;
    constructor() {
        for (uint256 i = 0; i < 5; i++) {
            bbb.push(MyData({ "bbb": i }));
        }
    }
    function test() public view {
        uint256 b = bbb.length;
    }
}
