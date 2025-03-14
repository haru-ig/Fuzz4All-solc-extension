pragma solidity ^0.8.0;
contract LowLevel2 {
    function sendEtherToLowLevel2() public payable {
        uint gas = uint(msg.data.length);
        bytes memory data = new bytes(uint(gas));
        for (uint i = 0; i < uint(gas); i++)
            data[i] = bytes1(i);
        msg.sender.call{value : gas}("");
    }
}
