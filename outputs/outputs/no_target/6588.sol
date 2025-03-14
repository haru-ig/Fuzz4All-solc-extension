pragma solidity ^0.8.0;
contract modifierW{
    function g(uint x) public pure returns(uint){
        uint y = ^(x);
        return y;
    }
}

pragma solidity ^0.8.0;
contract modifierW{
    function g(uint x) public pure returns(uint){
        uint y = x - 32;
        if (!((y).mod(256) == 1)) revert("wrong input");
        return y;
    }
}
contract myContractW is modifierW
{
    function g(uint x) public returns (uint) {
        return x + (32 * 32 * 32 * 32 * 32);
    }
}
