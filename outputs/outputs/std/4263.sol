pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

contract Arrays {

    struct X {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
    }

    uint8[5] memory arrayX = [72, 47, 19, 29, 14];
    uint8[] memory arrayY = [4, 11, 8, 5, 12, 9, 6, 3, 13];


    function assertFailure (string memory s) internal view {
        assembly {
            let result := mload(0)
            revert(add(32, result), add(32, mload(add(32, s))), 32)
        }
    }

    function set (uint8 val, uint8 len) public {
        if (len!= 5) {
            assertFailure("Arrays.set: Invalid length!");
        }
        arrayX[0] = 72;
        arrayX[1] = 47;
        arrayX[2] = 19;
        arrayX[3] = 29;
        arrayX[4] = 14;
        arrayX[0] = val;
    }

    function pop (uint8 len) public {
        if (len!= 5) {
            assertFailure("Arrays.pop: Invalid length!");
        }
        require(arrayX[0] == 72 &&
            arrayX[1] == 47 &&
            arrayX[2] == 19 &&
            arrayX[3] == 29 &&
            arrayX[4] == 14,
            "Arrays.pop: Invalid order!");
        arrayX[0] = 0;
    }

    function clone (uint8 len) public view returns (uint8[] memory) {
        uint8[] memory res = new uint
