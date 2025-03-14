pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_mutated_mutated {
    mapping(uint256 => string) public m;
    uint256 n = 0;
    uint256 x;
    uint256 a;
    constructor() {
        a = 65536;
        m[a] = m[a] + " " + uint2str(a) + " " + uint2str(x);
    }
    function update() public {
        a *= 2;
        uint256 n = 10;
        uint256 aold = a;
        uint256 xnew = a + 1;
        x = xnew + a;
        a = x - (x * 2) + xnew;
        m[a] = "New number! " + uint2str(n) + " " + uint2str(uint2str(xnew));
    }
    function uint2str(uint d) public pure returns (string memory) {
        if (d == 0) return "0";
        uint256 j = d;
        uint256 j1 = d;
        uint256 rt = "";
        if (j < 0) {
            rt = "-";
            j1 = -j;
        }
        uint len;
        while (j!= 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint digit;
        for (uint i = d - 1; i >= len; --i) {
            digit = j % 10;
            bstr[i] = "0" + uint2str(digit);
            j /= 10;
        }
        bstr = sokol_str_reverse(bstr);
        return string(bstr);
    }
    function sokol_str_reverse(bytes memory b) public pure returns (bytes memory) {

        uint blength = b.length;

        for (uint i = 0; i < blength/2; i++) {
            uint256 temp = b[i];
            b[i] = b[blength - 1 - i];
            b[blength - 1 - i] = temp;
        }
        return b;    }
}
