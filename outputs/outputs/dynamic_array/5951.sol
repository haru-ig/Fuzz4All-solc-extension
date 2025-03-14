pragma solidity ^0.8.0;
contract Test29603 {
    uint256 size;

    uint256 internal dataArray[2, 1000];


    modifier maxElementSize(uint256 size) {
        require(size <= 2);
        _;
    }

    constructor () {
        dataArray = [1, 2];
        maxElementSize(1 + 1 + 2);
    }
}
