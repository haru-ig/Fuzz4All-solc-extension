pragma solidity ^0.8.0;
contract RepeatingCalldataArrays {
    uint256[] private _uint256ArraysWithNullPointer;
    mapping(uint256 => bool) private _uint256ArraysWithNullPointerForReason;
    event SetUint256ArraysWithNullPointer(uint256[] _uint256ArraysWithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointerForReason);
    modifier NonRepeatable (uint256 i) {
        _uint256ArraysWithNullPointerForReason[i] = false;
        _uint256ArraysWithNullPointer[i] = i;
        _;
        _uint256ArraysWithNullPointer[i] = i;
        assert(_uint256ArraysWithNullPointer[i] == i);
        _uint256ArraysWithNullPointerForReason[i] = false;
        assert(_uint256ArraysWithNullPointerForReason[i] == false);
    }
    function UsingRepeatingCalldataArrays() {
        for (uint256 i = 0; i < 30; i++) {
            _uint256ArraysWithNullPointer.push(i);
            RepeatingCalldataArrays(address(this));
            if (i == 29) {
                SetUint256ArraysWithNullPointer(30);
            }
        }
    }
}
