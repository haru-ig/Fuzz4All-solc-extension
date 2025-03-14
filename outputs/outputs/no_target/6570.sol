pragma solidity ^0.8.0;
contract MyContractR is modifierR{
    function G(uint x) public view returns(uint, uint) {
        return (x * 256 + f(x), x);
    }
}
