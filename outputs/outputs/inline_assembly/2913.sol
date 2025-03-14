pragma solidity ^0.8.0;
uint[] public myArray;
contract C {

    modifier whenNotExternal(address sender) {

        _;
    }
    function func2(uint _arrLength) public whenNotExternal(msg.sender) _whenEmpty {
        for(uint i = 0; i < _arrLength; i++) {
            myArray[_arrLength - 1 - i] = -1;
        }
        assembly {
            create(add(_arrLength, 1), add(_arrLength, 1), 3, 2, 100)
        }
    }
    function func(uint _arrLength) public {
        uint _x;
        uint[] memory _v;
        assembly {
            set(_x)

            mstore(0x40, add(_arrLength, 1))
            mstore(0x30, _x)
            set(_v)
        }
        _whenEmpty {};
    }
}
