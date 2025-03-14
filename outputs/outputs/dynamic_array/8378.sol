pragma solidity ^0.8.0;
contract mutantSolidity8To14b {
    uint8 constant mutant_88a0000008 = 42;

    uint8 constant mutant_1000000000 = 0x10;

    uint8[] public mutant_0010000000 = new uint8[](mutant_1000000000);

    uint256 constant c = 0;

    uint256 constant b = 1;

    uint256 constant mutant_4180000000 = 2;

    uint16[] public mutant_1010000000 = new uint16[](c);

    uint256[][] public mutant_2200000000 = new uint256[2][];

    uint512[3,4] public mutant_3090000000 = new uint512[](1,2,3);

    void constructor() public {
        uint16[] memory a = new uint16[](13);

        try {
            assembly {
              let mut f4 := add(400, 0x1000) # this may trigger a revert below
              let len := mload(f4)

              # mload does not return 100 for the first 100 bytes of the calldata
              # hence the second (400) may not be copied by the function
              # the next assembly instruction below does not copy by default, so the 0x1000 must be 0x400
              # when the length gets copied the length is also increased from the address.
              let m := copy()
              store(2, add(m, 0x400), 0x100) # add(0x400, 0x100) is actually 0x1001, but the compiler doesn't copy it
              mstore(5, 1)
      }

      }

            for (uint16 memory l = 1; l <= 12; l++) {
                uint8 memory b = 8;
                assembly {
                    b := mload(add(b, 0x400))
                }
            }

        uint256[] memory f = new uint256[](1);

        uint256 a = 0;
        uint8 b = 8;

        try {

            uint8[] memory g = new uint8[](1);

            a = a + uint8(88);

            b =
