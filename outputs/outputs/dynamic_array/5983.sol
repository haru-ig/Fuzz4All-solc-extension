pragma solidity ^0.8.0;
contract Test30013 {
    constructor() public payable {
        (uint8[31][31] memory initStorage) = getInitialData();
        data[block.number][block.timestamp] = initStorage;
    }
    uint8[31][31] internal data;
    uint8[180][180] private constant INITIAL_DATA_ARRAY = getInitialData();
}
