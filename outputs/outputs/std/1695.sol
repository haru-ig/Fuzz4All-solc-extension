pragma solidity ^0.8.0;
contract Convert {
    uint internal constant _5 = uint(5);
}

pragma solidity ^0.8.0;
library Math {
    uint internal constant _5 = uint(5);
    function power(uint a, uint b) internal pure returns (uint) {
        require(b >= 0);
        if (b == 0) {
            return 1;
        }
        uint result = 1;
        while (b > 0) {
            if (b & 1 == 1) {
                result = result * a;
            }
            b = b / 2;
            a = a * a;
        }
        return result;
    }
}

pragma solidity ^0.8.0;
contract Memory {
    function getArray(address a) internal pure returns (uint[]) {

        uint16[] memory a = new uint16[](0);
        return a;
    }
}
