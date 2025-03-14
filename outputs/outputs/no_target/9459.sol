pragma solidity ^0.8.0;
contract SemanticalEquiv65 {
    constructor(address a)
    public
    {
        a.transfer(msg.value);
    }
}
pragma solidity ^0.8.0;
interface IF
{
    function g() public view returns (uint);
}
