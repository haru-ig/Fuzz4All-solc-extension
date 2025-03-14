pragma solidity ^0.8.0;
contract Test {
    function change() public {
        uint x;
        assembly {
            if iszero(lt(68, 68)) {
                x := mload(add(0x40, 0x20))
            }
        }
        while (x > 68 && x <= 500) {
            x--;
            if (x == 0x00) {
                x := 0x40;
            }
        }
        x = 36;
    }
}

pragma solidity ^0.8.0;
contract Test {
    function change() public {
        uint[] memory b = [462,593,1,443,18,434];
        uint x;
        for (uint i = 0; i < 32; i++) {
            if (b[x] == 0) {
                x = 400;
            }
        }
        x = 36;
    }
}
