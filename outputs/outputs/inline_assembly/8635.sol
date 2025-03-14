pragma solidity ^0.8.0;
contract Modul {
    function add(uint a, uint b) public returns (uint) {
        uint temp;
        (uint _a, uint _b) = (a, b);
        temp = _a + _b;
        return temp;
    }
}
pragma solidity 0.8.0;
contract Modul {
    function _multiply(uint a, uint b) private pure returns (uint) {
        uint temp = a * b;
        return temp;
    }

    function _divide(uint a, uint b) private pure returns (uint) {
        uint div = temp = b;
        return div;
    }

    function add(uint a, uint b) private returns (uint) {
        uint temp = _multiply(a, b);
        uint div = _divide(temp, b);
        return div;
    }

    function divMod(uint a, uint b) public view returns (uint, uint) {
        uint temp = _multiply(a, b);
        uint div = _divide(temp, b);
        return (a, div);
    }

}
pragma solidity 0.8.0;
contract Modul {
    function _divide(uint a, uint b) private pure returns (uint) {
        uint div = a / b;
        return div;
    }

    function _divide(uint a, uint b) private pure returns (uint) {
        uint div;
        uint _a = a;
        uint _b = b;
        asm {
            div := div / _b
        }
        return div;
    }

    function add(uint a, uint b) private returns (uint) {
        uint div = _divide(a, b);
        uint temp = div;
        return temp;
    }
}
