pragma solidity ^0.8.0;
contract Caller {

    struct Storage {
        uint256 x;
    }
    function sendEtherToContract() public payable {
        Storage storage xData = Storage(0x00);

        xData.x = xData.x.add(value);
    }
}
