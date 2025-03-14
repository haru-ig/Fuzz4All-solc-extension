pragma solidity ^0.8.0;
contract myContractC is MyContractC
{
    function g(uint x) pure public returns (uint) {
        return x + 0;
    }
}

pragma solidity ^0.8.0;
contract myContractC is modifierC, MyContractC
{
    function g(uint x) pure public returns (uint) {
        return x + 0;
    }
}
pragma solidity ^0.8.7;
contract myContractC {
    function g(uint x) pure public returns (uint)
    {
        return x + 0;
    }
}
contract myContractC is MyContractC, Interface
{
    function g(uint x) pure public returns (uint) {
        return x + 0;
    }
}
pragma solidity ^0.8.0;
contract myContractC is
{
    function f() public pure {
        uint y = uint(0) - uint(1);
    }
}


pragma solidity >=0.0.7
contract myContractC
{
    function f() public pure {
        uint y = 1 / uint(0);
    }
}
