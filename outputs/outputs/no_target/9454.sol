pragma solidity ^0.8.0;
interface I0
{
    function f() external view returns (bool);
}
interface I1
{
    function f() external view returns (uint160);
}





interface SemanticalEquiv642
{
    function f() external view returns (bool);
}

struct State
{
    State(1,2,3);
    function f2() public view { }
}
contract SemanticalEquiv6422 is SemanticalEquiv642
{
    State a;
    function f7() public view returns (enum.AddressType){
        return enum.AddressType.oneAddress;
    }
    function f9() public view returns ( uint32){
        return 1;
    }
    function f10(bool b) public returns (bool)
    {
        return b;
    }
    function f52(uint160 n) public view returns (address)
    {
        return address(n);
    }
    function f53(uint248 n) public view returns (uint248)
    {
        return n;
    }
    function f50() public view returns (bool) { return true;}
    function f62() public view returns (address[]) { return new address[](0);}
    function f64() public view returns (address[]{a[0],a[1]}){
        return new address[](0);
    }
}
enum AddressType
{
    oneAddress,
    twoAddresses,
    threeAddresses,
