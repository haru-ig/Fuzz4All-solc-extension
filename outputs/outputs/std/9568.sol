pragma solidity ^0.8.0;
contract MutateArray {
    uint[] public iv;
    uint[2] public iv_2;

    uint[] public idv;
    uint[2][2] public idv_2;

    uint[] public ivdv;
    uint[2][2][2] public ivdv_2;

    uint[] public iv2dv;
    uint[2][2][2][2] public iv2dv_2;

    uint[] public ivdv2;
    uint[2][2][2][2] public ivdv2_2;

    function mutate_i25_25(uint j) public {
        i25 = j;
        i13_1 = j + 1;
        i13_2 = i25 - j - 1;
    }

    function mutate_i25_5(uint j) public {
        i25 = j;
        i13_1 = j + 1;
        i25 = j;
        i13_1 = j + 1;
        i25 = j;
    }

    function mutate_i15_3(address addr) public {
        signer_addr = addr;
        i15 = 2**uint(uint8(bytes(abi.encodePacked(address(this).balance)))));
        i25 = 2**uint(uint8(bytes(abi.encodePacked(addr.balance)))));
        i13 = signer_addr_original.balance;
        i25 = i25 - 1;
    }

    function mutate_i25_13(uint j) public {
        i25 = j;
        i13_1 = j + 1;
        i13_2 = i25 - j - 1;
    }
}
