pragma solidity ^0.8.0;
contract GenesisUpgrade {
    uint[] public childrenIds;
    constructor() public {
        childrenIds.push(0);
    }
    function upgradeChild(address newChild) external {
        uint childId = childrenIds.length;
        childrenIds.push(newChild);
        childId += 2;
        bytes memory upgradeData = abi.encodeWithSignature(
        'upgradeChild(address)',
        newChild);
        TransferHelper.submitTransferRequest(
        childId,
        childAddress,
        newChild,
        upgradeData);
        emit ChildUpgraded(childId);
    }
}
