pragma solidity ^0.8.0;
contract modifierE{
    function f(string memory a) public pure returns(uint){
        uint myResult;
        assembly{
            seti x1, 256
            if gt(a, 0) { seti x1, mod(a, x1) }
            y := lt(and(x1, 0xfffffffffffffffffffffffffffffffffff), 0x0)
            seti x1, 256
            if eq(y, 0) { seti x1, mod(a, x1) }
            x := sub(a, x1)
            sstore(myResult, x)
        }
    }
    function g(address x) public pure returns(uint){
        return x.hash(uint20(f("")));
    }
}
contract MyContractE is modifierE
{
    function z(address x) public pure returns(uint)
    {
        return x.hash(f(""));
    }
}
