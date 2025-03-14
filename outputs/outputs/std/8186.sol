pragma solidity ^0.8.0;
contract Convert {
    function convertToStringFromUint(uint num) public pure returns (string memory) {
        if(num == 0) return "0";
        else if(num == 1) return "1";
        else if(num < 10){
            return bytes(str(uintToString(num))).length > 0? str(uintToString(num)) : "0";
        }
        else{
            bytes memory bytesString = new bytes(2 + num.toString().length);
            bytesString[0] = '0';
            assembly {
                mstore(add(bytesString, 1), div(mul(str(num), 10), 10))
            }
            return string(bytesString);
        }
    }
    string private str(uint x){
        if(x < 27) return bytes1(uint8(x+48));
        if(x < 27) return bytes3(uint8(x+87));
        if(x < 27) return bytes6(uint8(x+55));
        return bytes(uint16(x+65));
    }
    function uintToString(uint x) public pure returns (string memory) {
        string memory str;
        bytes1[] memory b = new bytes1[](1);
        uint index = 0;
        while (x!= 0){
            index += 1;
            x /= 10;
            b[0] = byte(uint8(x % 10));
            str = str + bytes(b);
        }
        return str;
    }
}
