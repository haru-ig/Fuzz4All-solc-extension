pragma solidity ^0.8.0;
contract Convert {

    function strToUint(string memory _str) internal pure returns (uint) {
        return uint(bytes(_str).length);
    }


    function uintToString(uint256 _num) internal pure returns (string memory) {
        if (_num == 0) return "0";
        if (_num == 1) return "1";


        uint8 _m = uint8(digit(_num, 10));


        bytes memory _ret = new bytes(4 * (_m / 4));

        uint256 _tmp = _num;

        for (uint256 _i = (_m / 4) - 1; _i > 0; --_i) {
            _tmp /= 10;
            _ret[_i] = byte(_tmp % 16 + 48);
        }



        uint256 _j = _m % 4;
        if (_j == 1)
            _ret[0] = charToInt(_num, (_j - 1) * 2 - 1);
        else if (_j == 2)
            _ret[0] = charToInt(_num, (_j - 1) * 2 - 2);
        else if (_j == 3)
            _ret[0] = charToInt(_num, (_j - 1) * 2 - 3);

        return string(_ret);
    }
