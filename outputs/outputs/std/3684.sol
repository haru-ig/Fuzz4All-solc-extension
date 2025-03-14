pragma solidity ^0.8.0;
contract Error {
    function length32() public pure returns (uint) {
        return uint(32);
    }
}
pragma solidity ^0.8.0;
contract Array {
    uint8[255][] private array_type;

    function min() private view returns (uint) {
        uint min = uint(array_type[0][0]);

        for (uint i = 0; i < 255; i++) {
            if (array_type[i][0] < min) {
                min = array_type[i][0];
            }
        }

        return min;
    }
}
pragma solidity ^0.8.0;
contract Array {
    uint256[255][] private array_type;

    function sum() private view returns (uint) {
        uint sum = uint256(array_type[0][0]);

        for (uint i = 0; i < 255; i++) {
            sum += uint256(array_type[i][0]);
        }

        return sum;
    }
}
