pragma solidity ^0.8.0;
 contract Convert {
    function num2hex(uint n) public pure returns (string memory) {
        if (n > 0) {
            bytes memory hex = new bytes(4);
            hex[0] = '0' + uint4(n).toString(16);
            for (uint i = 1; i < 8; i++) {
                n /= 16;
                hex[i] = '0' + uint4(n).toString(16);
            }
            return string(hex);
        }
        return "0";
    }
    function hex2num(string memory s) public pure returns (uint) {
        if (s.length > 1 || s.length == 0) {
            for (uint i = (s.length >= 1); i < 64; ++i) {
                if ((msg.data.length >= i + 1)&&(uint8(msg.data[i]) >=  '0' && uint8(msg.data[i]) <= '9')) {
                    s = s.substr(0, i) + s.substr(i+1, 63);
                    break;
                }
            }
        }
        return bytes(s).length > 0? bytes(s).toUint() : 0;
    }
}

pragma solidity ^0.8.0;
contract GetArray {
    function getNumArray(uint size) public returns(uint []) {
        Array storage A = new Array();
        for (uint i=0; i<size; i++) {
            A.setVal(i);
        }
        if (A.head.next == 0) {
            uint [] memory A_new = new uint[](size);
            for(uint x = 0; x< size; x++){
                A_new[x] = A.head.val;
            }
            return A_new;
        }
        else{
            uint [] memory A_new = new uint[](size-(A.head.next+1)/2);
            uint x = 0;
            uint next = A.head.next;
            while (next > 0) {
                A_new[x] = uint(A.head.val);
                A.setNext(x, A.head.val);
                A_new[x+1] = uint(next);
                A.setNext(x+1, next);
                x = x + 2;
                next = next / 2;
            }
            A_new[x-1] = uint(next);
            A_new[x] = uint(A.head.val);
            return A_new;
        }
    }
    function getArray(uint size, uint length) public returns(uint [] memory) {
        Array storage A = new Array();
        for (uint i=
