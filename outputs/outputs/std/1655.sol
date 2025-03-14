pragma solidity ^0.8.0;
interface IConvert {
    function uintToStr(uint x) external pure returns(string memory);
    function strToUint(string memory str) external pure returns(uint);
}

pragma solidity ^0.8.0;
interface IMath {

    function sqrt(uint) external pure returns(uint r);
}


pragma solidity ^0.8.0;
contract Array {
    uint[] _data;

    event Append(uint _value);

    function append(uint _value) public {
        _data.push(_value);
    }

    function length() public view returns (uint) {
         return _data.length;
    }

    function at(uint index) public view returns (uint) {
        return _data[index];
    }

    function isEmpty() public view returns (bool) {
        return length()==0;
    }

    function min() public view returns (uint) {
        for(uint i = 0; i< length(); i++) {
            if(_data[i] < _data[i+1]) {
                return _data[i];
            }
        }
        return uint(0);
    }

    function max() public view returns (uint) {
        for(uint i = 0; i< length(); i++) {
            if(_data[i+1] < _data[i]) {
                return _data[i+1];
            }
        }
        return uint(0);
    }

    function sum() public view returns (uint) {
        uint _sum = 0;
        for(uint i=0; i < length(); i++) {
            _sum += _data[i];
        }
        return _sum;
    }

    function sort() public order {
        for(uint i = 0; i < length(); i++) {
            uint j = i;
            for(; j < length()-1; j++) {
                if(_data[j] > _data[j+1]) {
                    _data[j] ^= _data[j+1];
                    _data[j+1] ^= _data[j];
                    _data[j] ^= _data[j+1];
                }
            }
        }
    }

    function toStr() public pure returns (string memory a) {
        for(uint i = 0; i < _data.length; i++) {
            a = a+", "+uintToStr(_data
