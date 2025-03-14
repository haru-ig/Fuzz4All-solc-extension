pragma solidity ^0.8.0;
interface IArray {
    function append(uint _value) external;
}

contract Main {
    address _arrayAddress;
    IArray _array = IArray(_arrayAddress);
    function main() public {
        _array.append(1);
        _array.append(2);
        _array.append(3);
        uint[] memory data = new uint[](3);
        for (uint index = 0; index < 3; index++) {
            data[index] = _array.append(index);
        }
        assert(_array.length() == 3);
        for (uint index = 0; index < 3; index++) {
            assert(_array.data() == index);
            assert(_array.get(index) == index);
        }
    }
}
