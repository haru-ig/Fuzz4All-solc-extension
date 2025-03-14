pragma solidity ^0.8.0;
contract SemanticVersion{
    function versionCompare(string memory _a, string memory _b) private pure returns(int) {
        if (_a == _b) return 0;
        if (_a.length == 0) {
            return -1;
        }
        if (_b.length == 0) {
            return 1;
        }
        uint _lena = 0;
        uint _lenb = 0;
        for(uint i = 0; i < _a.length; i++) {
            if (_a[i] >= 48 && _a[i] <= 57) {
                _lena *= 10; _lena += uint(bytes1(uint(_a[i])) - 48);
            } else if (_a[i] > 57) {
                return 1;
            } else if (_a[i] < 48) {
                return -1;
            }
        }
        for(uint i = 0; i < _b.length; i++) {
            if (_b[i] >= 48 && _b[i] <= 57) {
                _lenb *= 10; _lenb += uint(bytes1(uint(_b[i])) - 48);
            } else if (_b[i] > 57) {
                return -1;
            } else if (_b[i] < 48) {
                return 1;
            }
        }
        return (_lenb == _lena)? 0 : (_lenb > _lena)? 1 : -1;
    }
}
