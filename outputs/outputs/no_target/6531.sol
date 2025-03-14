pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x) public pure returns(uint,uint){
        return (uint(x)* 256, x);
    }
}
contract myContractA is modifierB{
    function g() pure public {}
}
contract myContractB is modifierB{
    function g() pure public {}
}
contract myContractC is modifierB{
    function g() pure public {}
}
contract myContractD is modifierB{
    function g() pure public {}
}
contract myContractE is modifierB{
    function g() pure public {}
}
contract myContractF is modifierB{
    function g() pure public {}
}
contract myContractG is modifierB{
    function g() pure public {}
}
contract myContractH is modifierB{
    function g() pure public {}
}
contract myContractI is modifierB{
    function g() pure public {}
}
contract myContractJ is modifierB{
    function g() pure public {}
}
contract myContractK is modifierB{
    function g() pure public {}
}
