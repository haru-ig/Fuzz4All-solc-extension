pragma solidity ^0.8.0;
contract T8FS_mut_mod{
    T8FS_mod m;
    constructor(address a) {
        m = new T8FS_mod(a);
    }
    function set_address_field_0(address x) {
        m.a = x;
    }
    function() {
        assert(false);
    }
}
