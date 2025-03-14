pragma solidity ^0.8.0;
contract A {
    function func() public view returns(bool) {
        uint id_0 = 3;
        uint id1_0 = 4;
        uint id2_0 = 5;
        uint id_1 = 6;
        uint id_2 = 7;
        assert(id_0 < id_1);
        assert(id_1 < id_2);
        assert(id_1 < id1_0);
        return true;
    }
}
contract B {
    function func() public view returns(bool) {
        uint id_0 = 3;
        uint id1_0 = 4;
        uint id2_0 = 5;
        uint id_1 = 6;
        uint id_2 = 7;
        assert((id_0 < uint160) < (id2_0 < uint160) < (id1_0 * id_0 < uint160));
        return true;
    }
}
contract C {
    function func() public view returns(bool) {
        uint id_0 = 3;
        uint id1_0 = 4;
        uint id2_0 = 5;
        uint id_1 = 6;
        uint id_2 = 7;
        return (bool)(1 < id_0 < uint160) && (uint160 > ((id_1 < id1_0) < (id2_0 > id_2) < (id_1 * (uint160 - 3) > id_2 * id_1) < (id2_0, id2_0 << 8 * 6)) << 8 * 6));
    }
}
