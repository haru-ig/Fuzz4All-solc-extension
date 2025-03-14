pragma solidity ^0.8.0;
struct StateMutated {
    bytes32 name;
    bytes32 name2;
    uint data;
    mapping(bytes32 => uint) data2;
    bytes32[] data3;
    bytes32[] data4;
}

contract TestArray {
    StateMutated storage SMOKE;

    function mutate1() public {
            SMOKE.data3.push("");
            SMOKE.data4[0] = "a";
            SMOKE.data3.push("");
            SMOKE.data4.push("");
            delete SMOKE.data4[0];
            SMOKE.data2["a"] = 12;
    }

    function mutate2() public {
            SMOKE.data3.push("");
            SMOKE.data4.push("");
            SMOKE.data3.push("");
            SMOKE.data4.push("");
            delete[] SMOKE.data3;
            delete[] SMOKE.data4;
            SMOKE.data2["a"] = 12;
    }

    function mutate3() public {
            uint[] memory data3_init = new uint[](5);
            data3_init[0] = 100;
            data3_init[1] = 200;
            data3_init[2] = 300;
            data3_init[3] = 400;
            data3_init[4] = 500;
            SMOKE.data3 = data3_init;
            SMOKE.data2["a"] = 100;
    }

   function access3() public {
        uint[] memory data3_init = new uint[](5);
        data3_init[0] = 100;
        data3_init[1] = 200;
        data3_init[2] = 300;
        data3_init[3] = 400;
        data3_init[4] = 500;
        SMOKE.data3 = data3_init;
        SMOKE.data2["a"] = 100;
    }

    function access99() public {
        uint[] memory data99 = new uint[](99);
    }

    function access(uint i) public {
        SMOKE.data3[i] = "a";
        SMOKE.data4[0] = "a";
        delete SMOKE.data3[i];
        SMOKE.data2["a"] = 12;
    }
}
