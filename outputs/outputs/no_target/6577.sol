pragma solidity ^0.8.0;
contract myContractU is modifierU
{
    function g(uint x) public returns (uint) {
        uint y = x / 256;
        return x * 256 * 256 + f(y);
    }
}

pragma solidity ^0.8.0;
contract
{
    modifier U
    {
        function f(uint x) public pure returns(uint){
            uint y = x / 256;
            return y;
        }
    }
    function g(uint x) public returns (uint) {
        return x * 256 + f(x);
    }
}
