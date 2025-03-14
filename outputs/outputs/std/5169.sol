pragma solidity ^0.8.0;
contract Solidity1 {
    uint constant _A = 10;
    uint constant _B = 20;
    mapping (address => uint) payables;

    uint8 public byte_storage;
    constructor() {

    }
    function f() public pure returns (uint) {
        return _A + byte_storage;
    }
    function g() public view returns (uint) {
        return _A + _B;
    }
    function h(uint a) public view returns (uint) {
        return _A + a;
    }
    function i() public pure {
        uint ret = f(_A + 2 * byte_storage) - _A - 2 * byte_storage;
        require(ret == 0);
    }




    function k(uint a) public {
        uint ret = f(_A + a * byte_storage) - _A - a * byte_storage;
        bytes memory mem = bytes(f(_A + a * byte_storage));
        uint[] memory aMem = new uint[](10);
        require(ret == 0);
    }









    function j(uint a) public pure returns (uint) {
        uint ret = f(_A + a * byte_storage) - _A - a * byte_storage;
        assembly {
            if eq(sub(ret, 0x0), 0) {
                ret := 0
            }
        }
        require(ret == 0);
        return ret;
    }
}
