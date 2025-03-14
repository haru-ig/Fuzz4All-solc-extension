pragma solidity ^0.8.0;
library TestLibrary {
    uint _length;
    function GetArrayValue(uint index) public view returns (uint value) {
        return _length;
    }
    function ChangeArrayValue(uint index, uint value) public {
        require((_length % 2)!= 0);
        _length = value;
    }
    function InitialiseArray() public {
        _length = 1;
    }
}

pragma solidity ^0.8.0;
contract ConstantArray {
    uint[10] CONSTANT_ARRAY_0 = [0,0,0,0,0,0,0,0,0,0];

    uint CONSTANT_ARRAY_1 = 42;

    function GetArrayValue() public view returns (uint) {
        return CONSTANT_ARRAY_0;
    }

    function SetArrayValue(uint value) public {
        CONSTANT_ARRAY_0[0] = value;
    }
}
