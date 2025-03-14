pragma solidity ^0.8.0;
interface T9ES_mut8Interface {
    uint232 get_i();
    uint8 get_i8();
    address get_a();
}
contract T9ES_mut8_ABI_reencoding {
    struct A {
        uint232 i;
        uint232 j;
        uint i8;
    }
    A a;
    function set_size(uint i) public {
        a.i = i;
    }
    function set_a(address addr) public{
        a.i = addr;
    }
    T9ES_mut8Interface get_a_interface() public view returns (T9ES_mut8Interface){
        return a;
    }
    function set_i(uint i) public {
        a.i = i;
    }
    function set_i8(uint8 i8) public {
        a.i8 = i8;
    }
    function set_j(uint232 j) public{
        a.j = j;
    }
    function set_a_interface(address addr) public {
        a.i = addr;
    }
    function set_a_a(A _a) public{
        a = _a;
    }
    T9ES_mut8Interface get_a_a() public view returns (T9ES_mut8Interface){
        return a;
    }
    function set_a_a_interface(T9ES_mut8Interface _a) public{
        a.i = _a;
    }
    function set_a_a_interface_a() public {
        a.j = a;
    }
}

pragma solidity ^0.8.0;
contract T9ES_mut8_generated_contract {
    T9ES_mut8Interface public aInterface;
    function constructor(uint256 _i) public {
        address xAddr = msg.sender;
        aInterface = new T9ES_mut8(i);
        aInterface.set_size(_i);
        aInterface.set_a(xAddr);
    }
    function set_i(uint i) public {
        aInterface.set_i(i);
    }
    function set_a(address addr) public {
        aInterface.set_a(addr);
    }
    function set_a_interface(address addr) public {
        T9ES_mut8Interface(_aInterface).set_a(addr);
    }
    function set_a_a(A _a) public {
        aInterface.set_a_a(_a);
    }
    function get_a() public returns (address) {
        return aInterface.get_a();
    }
