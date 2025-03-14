pragma solidity ^0.8.0;
contract ModifiableEquivalentDynamicArray
{
    EquivalentDynamicArrayAssignment public e;

    event UpdatedEther (uint wad);
    constructor() public
    {
        e = new EquivalentDynamicArrayAssignment();
    }
    function setE(EquivalentDynamicArrayAssignment memory memorye) public
    {
        e = EquivalentDynamicArrayAssignment(memorye);
        emit UpdatedEther(address(this).balance);
    }
}



pragma solidity ^0.8.0;
contract ModifiableEquivalentDynamicArray2
{
    EquivalentDynamicArrayAssignment public e;
    ModifiableEquivalentDynamicArray3 public m;
    constructor() public
    {
        e = new EquivalentDynamicArrayAssignment();
        m = new ModifiableEquivalentDynamicArray3();
    }
    function setE(EquivalentDynamicArrayAssignment memory memorye) public
    {
        e = EquivalentDynamicArrayAssignment(memorye);
    }
    function setM(ModifiableEquivalentDynamicArray3 memory memorym) public
    {
        m = ModifiableEquivalentDynamicArray3(memorym);
    }
}
contract ModifiableEquivalentDynamicArray3
{
    uint256 public z;
    uint256 public x;
    uint256 public y;
    ModifiableEquivalentDynamicArray5 public m;
    constructor() public
    {
        m = new ModifiableEquivalentDynamicArray5();
        m.x = 42;
    }
    function getZ() public pure returns (uint256)
    {
        return m.y;
    }
    function setZ(uint256 x) public
    {
        require(address(this).balance >= 75, "Low balance?");
        z = x;
    }
}
