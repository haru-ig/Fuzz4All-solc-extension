pragma solidity ^0.8.0;
contract ArrayWithMethods {
    function sum(uint256[] memory _a) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < _a.length; i++) {
            sum += _a[i];
        }
        return sum;
    }
    function min(uint256[] memory _a) public pure returns (uint256) {
        uint256 min = uint256(2**256);
        for (uint256 i = 0; _a[i] < min && i < _a.length; i++) {
            min = _a[i];
        }
        return min;
    }
}
contract ArrayWithSemantic {
    function sum(uint256[5] memory _a) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 5; i++) {
            sum += _a[i];
        }
        return sum;
    }
    function min(uint256[8] memory _a) public pure returns (uint256) {
        uint256 min = uint256(2**256);
        for (uint256 i = 0; i < 8; i++) {
            min = _a[i];
        }
        return min;
    }
}
contract ArrayWithoutMethodsAndSemantic {
    function sum(uint256[].memory _a) private pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < _a.length; i++) {
            sum += _a[i];
        }
        return sum;
    }
    function min(uint256[5][6] memory _a) public pure returns (uint256) {
        uint256 min = uint256(_a[0][0]);
        for (uint256 i = 1; i < 5; i++) {
            for (uint256 j = 0; j < 6; j++) {
                if (_a[i][j] < min) {
                    min = _a[i][j];
                }
            }
        }
        return min;
    }
}
contract MathWithMethods {
    function sqrt(uint256 _a) public pure returns (uint256) {
        return uint256(1) + sqrt(uint256(_a));
    }
    function exp(uint256 _a) public pure returns (uint256) {
        uint256 x = uint256(1);
        for (uint256 i = 1; i < _a; i++) {
            x = x * uint256(3)
