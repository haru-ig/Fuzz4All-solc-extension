pragma solidity ^0.8.0;
contract Test2338 {
    constructor() public {
        Test30013 storage x = Test30013(address(this));
        data = new uint8[](10);
        for (uint i = 0; i < data.length; i++)
           x.data[i] = uint8(i);
        data[4] = uint8(99);
    }
    uint8[] private data;
    fallback() external payable { }
}
