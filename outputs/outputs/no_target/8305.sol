pragma solidity ^0.8.0;
<fim_middle>contract NewSolidityVersionIsCompatible {
    event Updated(address _address, uint256 _param);
    event NewContractEvent(uint256 _param);

    event NewContractEventInternal(uint256 _param);
    uint256 constant NEW_VAR_UPDATE = 1;
    NewContractEvent public updatedEvent;


    address public addr;
    Updated public varToUpdate;
    constructor() public {
        addr = 0xc8440948f1f00c4222d9e5d81037f779c7ff96e9;
        Updated storage updatedData = Updated(addr, NEW_VAR_UPDATE);
        assert(updatedData.update() == NEW_VAR_UPDATE);
    }
    function callAndUpdate() public {
        varToUpdate.update();
        updatedEvent.emit(address(this), NEW_VAR_UPDATE);
    }

    function() external payable {
        assert(address(this).balance >= 2000000 ether);
        updatedEvent.emit(address(varToUpdate), NEW_VAR_UPDATE);
    }

    function withdrawAndCall() public payable {
        withdraw();
        callAndUpdate();
    }
    function withdraw() public payable {
       require(msg.value == 2000000 ether);
       payable(msg.sender).transfer(msg.value);
    }
    function withdrawAndCallAndLog() public payable {
        withdraw();
        updatedEvent.emit(address(varToUpdate), NEW_VAR_UPDATE);
    }
}
