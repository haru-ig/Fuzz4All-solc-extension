pragma solidity ^0.8.0;
contract Contract_3 {
    function Contract_3() {
        a = 5;
    }
    function setY() public {
        a = uint8(5);
    }
    function setZ() public {
        a = 0;
        a = int16(5);
        a = uint256(5);
    }
    function getX() public view returns (uint256) {
        return a;
    }
    uint256 public a;
}
contract Array {
    uint[] storage data;
    uint data_length;
    constructor(uint data) {
        data[1] = data;
        data_length = 2;
    }

    function setX(uint element) public {
        data[0] = element;
    }

    function add(uint element) public {
        data_length = data_length + 1;
        data[data_length] = element;
    }

    function getX(uint index) public view returns (uint) {
        return data[index];
    }

    function getXLength() public view returns (uint) {
        return data_length;
    }

    function sort() public {
        uint length = data_length;
        data[0] = data[data_length];
        while(length > 1) {
            uint temp;
            if(data[0] > data[1]) {
                temp = data[0];
                data[0] = data[1];
                data[1] = temp;
            }
            length--;
        }
    }
}
contract Convert {
    function strto8(string memory str) public pure returns (uint8) {
        return uint8(uint256(uint8(str)));
    }
    uint8 a;
    function convert_to_uint8() public pure {
        a = strto8("1");
    }
    uint256 b;
    function convert_to_uint256() public pure {
        b = uint8(a);
    }
}
contract Math {
    uint8 a;
    function sqrt(uint256 i) public pure returns (uint256) {
        uint256 x = uint256(1250.0) / 256.0;
        while (i > 2) {
            (i, uint256 t) = uint256(uint256(i / 2)) - uint256(uint256(t / 2));
            x = (uint256(uint256(x / 2))), x = x + x;
        }
        return x;
    }
    function modulo(uint256 x, uint256 y) public pure
