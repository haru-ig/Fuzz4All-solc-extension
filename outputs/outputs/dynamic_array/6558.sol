pragma solidity ^0.8.0;
contract T9ES_mut7 {
    function f() public pure returns (uint) {
        uint v = 0;
        uint[] storage s = new uint[](10);
        s[9] = 20;

        uint[] storage2 = new uint[](13);
        s[8] = 50;

        uint[] storage3 = new uint[](16);
        s[7] = 75;

        uint[] storage4 = new uint[](20);
        s[6] = 99;

        uint[] storage5 = new uint[](23);
        s[5] = 133;

        uint[] storage6 = new uint[](26);
        s[4] = 167;

        uint[] storage7 = new uint[](30);
        s[3] = 209;

        uint[] storage8 = new uint[](23);
        s[2] = 239;

        uint[] storage9 = new uint[](9);
        s[0] = 247;

        uint[] storage10 = new uint[](5);
        s[1] = 253;

        uint[] storage11 = new uint[](27);
        s[10] = 25400;

        uint[] storage12 = new uint[](28);
        s[12] = 25440;

        uint[] storage13 = new uint[](25);
        s[11] = 25488;

        uint[] storage14 = new uint[](17);
        s[10] = 25532;

        uint[] storage15 = new uint[](14);
        s[9] = 25556;
        return v;
    }
}
