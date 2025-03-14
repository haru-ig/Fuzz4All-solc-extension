pragma solidity ^0.8.0;
contract semanticallyEquiv5
{
}
contract semanticallyEquiv6
{
}
contract semanticallyEquiv7
{
}
contract semanticallyEquiv8
{
}
contract semanticallyEquiv9
{
    event log();
    function test(uint256 _a) public
    {
        log();
        if (_a == 11)
        {
            log();

            uint x = uint(uint256(11));
            assert(x == uint(uint160((uint160(x) + uint160(x) / 2)) % uint160()));
        }
    }
}
