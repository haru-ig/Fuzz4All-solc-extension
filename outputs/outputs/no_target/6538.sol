pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x) public pure returns(uint){
        uint y = uint(x)/ 256;
        return x * 300 - y;
    }
}
contract myContractB is modifierB. modifierB{
    function g() pure public {}
}
contract myContractC is modifierB. modifierB{
    function g() pure public {}
}
contract myContractD is modifierB. modifierB{
    function g() pure public {}
}
contract myContractE is modifierB. modifierB{
    function g() pure public {}
}
contract myContractF is modifierB. modifierB{
    function g() pure public {}
}
contract myContractG is modifierB. modifierB{
    function g() pure public {}
}
contract myContractH is modifierB. modifierB{
    function g() pure public {}
}
contract myContractI is modifierB. modifierB{
    function g() pure public {}
}
contract myContractJ is modifierB. modifierB{
    function g() pure public
