pragma solidity ^0.8.0;
contract modifierX{
    function f(uint x) public pure returns(uint){
        uint y = x / 256;
        return y;
    }
    function g() public view returns (uint) {
        return x + f(1);
    }
}
contract myContractX is modifierX
{
    function g(uint x) public returns (uint) {
        return x - f(x) / 2;
    }
}
