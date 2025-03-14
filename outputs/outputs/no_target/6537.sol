pragma solidity ^0.8.0;
contract modifierK{
    function f(uint x) public pure returns(uint){
        uint y = uint(x);
        return x * 256 / y;
    }
}
contract myContractB is modifierK{
    function g() pure public {}
}
contract myContractC is modifierK{
    function g() pure public {}
}
contract myContractD is modifierK{
    function g() pure public {}
}
contract myContractE is modifierK{
    function g() pure public {}
}
contract myContractF is modifierK{
    function g() pure public {}
}
contract myContractG is modifierK{
    function g() pure public {}
}
contract myContractH is modifierK{
    function g() pure public {}
}
contract myContractI is modifierK{
    function g() pure public {}
}
contract myContractJ is modifierK{
    function g() pure public {}
}
contract myContractK is modifierK{
    function g() pure public {}
}
contract myContractL is modifierK{
