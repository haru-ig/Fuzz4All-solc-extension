pragma solidity ^0.8.0;
contract H {
    address[] x = [address(0), address(0), address(0)];
    address[3][3] storage storageData;
    constructor() public {
        x.push(address(0));
        x.push(address(0));
        x.push(address(0));
        storageData[address(0)][0] = address(0);
        storageData[address(0)][1] = address(0);
        storageData[address(0)][2] = address(0);
    }
}
