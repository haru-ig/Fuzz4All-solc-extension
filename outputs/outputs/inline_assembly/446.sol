pragma solidity ^0.8.0;
contract SemanticallyEquivalentWithM16 {
    constructor () public {
        (address, string memory, string memory) memoryData = _initialData;
        msg.sender.call{value:memoryData.balance}("");
    }

    event Log(address value1, string value2, string value3);
    assembly {

        log(address("5"), returndatacopy(0, 0, returndatasize()), returndatasize())
    }
    function _initialData() internal returns (address, string memory, string memory ){
        return (msg.sender, "", "");
    }
}
