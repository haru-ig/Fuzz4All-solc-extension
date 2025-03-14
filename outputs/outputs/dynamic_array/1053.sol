pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutations {
    MutatingReturnsArrays _object;

    function mutateNullPointers() returns (uint256) { _object.setReturnArraysForReason(uint256(0x23434343434), uint256[5](0xff, 0x40)) return 999; }
    function removeFromUint256WithNullPointer() returns (uint256, uint256) { (uint256 returnValue, uint256 zero) = (_object.add255(), (uint256) uint256(0x012345678890ABCF)); return (returnValue, zero); }
    function removeFromUint256WithInvalidArray() returns (uint256) { uint256[] memory arrayOfSizes; return _object.setReturnArraysForReason(_object, arrayOfSizes)[0]; }

    function mutateUint256ArraysWithNullPointer() returns (uint256, uint256) { (uint256, uint256[5]) returnValue; return returnValue; }
    function addTwoAndReturnSingleUint256() pure public returns (uint256) { uint256 _a = _object.add255(); _object.[0][1] = _a; _object.[2]; return _object; }
    event MutateReturnArrayUIntWithNullPointer();
}

pragma solidity ^0.8.0;
interface InterfaceWithArray {
    function dynamicArray() view returns (uint256[5] memory);
}
contract ArraysInContract {
    InterfaceWithArray public _arrayWithNullPointerFunction;
    InterfaceWithArray public _arrayWithInvalidSizeFunction;
    mutating function setArray
