pragma solidity ^0.8.0;
contract modifierB{
    function f(uint x) public pure returns(uint){
        uint y = uint(x)/ 256;
        return x * 300 - y;
    }
}
interface myInterfaceA is modifierB{
    function g() pure public;
}
interface myInterfaceB is modifierB{
    function g() pure public;
}
interface myInterfaceC is modifierB{
    function g() pure public;
}
interface myInterfaceD is modifierB{
    function g() pure public;
}
interface myInterfaceE is modifierB{
    function g() pure public;
}
interface myInterfaceF is modifierB{
    function g() pure public;
}
interface myInterfaceG is modifierB{
    function g() pure public;
}
interface myInterfaceH is modifierB{
    function g() pure public;
}
interface myInterfaceI is modifierB{
    function g() pure public;
}
interface myInterfaceJ is modifierB{
    function g() pure public;
}
interface myInterfaceK is
