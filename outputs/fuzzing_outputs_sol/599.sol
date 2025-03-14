pragma solidity ^0.8.0;
contract EtherRevertTest0x8040
{
    function testEtherRevert() public payable returns(uint256)
    {
        revert();
        return 0;
    }
}
contract EtherRevertTest0x40
{
    function testEtherRevert() public payable returns(uint256)
    {
        revert();
        return 0;
    }
}
pragma solidity ^0.8.0;
contract Caller
{
    constructor()
    {}
    fallback() public payable {
        uint256 result = getResult();
        require(result > 0, "Contract must run getResult");
    }

    function getResult() public view returns(uint256) {
        return 0;
    }
}
