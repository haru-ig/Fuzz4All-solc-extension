pragma solidity ^0.8.0;
contract T9ES_10 {
    uint[] a;
    uint8[] _storage;
    uint8[] _storage2;
    uint8[] _storage3;
    uint16[] b;
    uint8[1] x;
    function add_mem(uint x) public {
        x.gas;
    }
    uint a2;
    function add_local() public view {
        a2 = 123;
        c(120, 60);
    }
    function add_local1() public view {
        a2 = 123;
        _local1(120);
    }
    function add_local2() public view {
        a2 = 123;
        _local2();
    }
    function add_local3() public view {
        a2 += 120;
        _local3();
    }
    function add_local4() public view {
        a2 += 120;
        _local4();
    }
}
