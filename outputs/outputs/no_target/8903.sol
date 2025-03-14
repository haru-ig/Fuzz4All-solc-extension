pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2_Base {
    uint constant public _Value226 = 1;
    uint constant public _Value227 = 1;
    uint constant public _Value233 = 1;
    uint constant public _Value238 = 1;
    function test (uint  _value260) public virtual returns (uint,uint,uint,uint) {
        return (uint(_Value225), _value260, _value260, 0);
    }
}

pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 is EquivalentAbiMutations_v2_Base {
    uint constant public _Value229 = 1;
    uint constant public _Value232 = 1;
    uint constant public _Value236 = 1;
    uint constant public _Value242 = 1;
    uint constant public _Value243 = 1;
    uint constant public _Value246 = 1;
    function test () public returns (uint, uint, uint, uint) {
        return (uint(_Value226), 0x203, _Address, _1);
    }

    function _doCall() internal view returns (address) {
        return uint(uint(uint80(0x00))) >> uint(0x01) );
    }


    function() external payable {
    }

    struct _structReturn {
        uint _uintReturn;
        address _addressReturn;
    }

    function _readInput() internal view returns (address _address, uint _uint) {
        return (_address, _uint);
    }

    function _readInput_v2() internal view returns (address _address2, uint _uint2, uint _uint3) {
        return (_address2, _uint2, 0x2160);
    }
    event _doEvent();
}
library _ArrayLib {
    uint constant _Sizeof229 = uint(0x01);
    uint constant _Sizeof232 = uint(0x01);
    uint constant _Sizeof237 = uint(0x01);
    uint constant _Sizeof253 = uint(0x01);
    uint constant _Sizeof254 = uint(0x01);
    uint
