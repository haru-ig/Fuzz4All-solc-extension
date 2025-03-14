pragma solidity ^0.8.0;
contract MutatingReturnsUnsignedInts {
    uint public _uint;
    uint public _uintArray[5];

    function setUint(uint value) public {
        _uint = value;
    }

    function setArray(uint[] memory array) public {
        _uintArray = array;
    }

    function setUintsWithoutCalldata(
        uint uintWithCalldata,
        uint uint8WithCalldata,
        uint uint256WithCalldata
    ) public {
        setUint(uintWithCalldata);
        setUint8(uint8WithCalldata);
        setUint256(uint256WithCalldata);
    }

    function setUint8Values(uint8 uint8Value) public {
        _uint8Values = uint8Value;
    }

    function setUint256Values(uint256 uint256Value) public {
        _uint256Values = uint256Value;
    }
}
