pragma solidity ^0.8.0;
contract OldMutationv55510
{
    function f() public pure { uint c=0x02; uint d=0; uint e=1000; e&=0; }
}

pragma solidity ^0.6.0;
contract oldMigrationMutationContract
{
    function oldMigration() public pure { uint c=0x02; uint256 d=0; uint256 e=100; e&=0; }
}
