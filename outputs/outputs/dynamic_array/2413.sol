pragma solidity ^0.8.0;
contract SemanticEquality_ImmutableDynamicArrays_acbc747f4ac29aa7d2809f9760c1862b
{
    mapping([address => bool] storage) addressesToBeRepaired;

    function isUsed(address addr) public view returns(bool)
    {
        uint256 key;
        assembly {key := addr}
        return block.storageRoot.slotSize(key) > 0 && bool(contract(key).functions.isUsed()) && address(this).balance > 0;
    }

    function test(address addr) public {
        bool flagToBeSet = bool(contract(addr).functions.isUsed());

        uint key;
        uint slotSize;
        uint offset;
        bool flag = block.storageRoot.slotSize(key);

        if(key < 201 && flag)
        {
           slotSize = uint(block.storageRoot);
           offset = 201 + uint(address(block.storageRoot).slotSize(&addr));
           addressesToBeRepaired[key] = flagToBeSet;
        }

        if(flagToBeSet)
        {
            addressesToBeRepaired[addr] = bool(contract(addr).functions.isUsed());
        }

        uint flag2 = block.storageRoot.slotSize(offset);
        uint flag3 = block.storageRoot.slotContents().slotSize(offset);

        emit(addr, flag, flag2, flag3, addressesToBeRepaired[addr]);
    }
}
