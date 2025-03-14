pragma solidity ^0.8.0;
contract Mutator {

    constructor(int256[] memory _myArray, uint256[] memory _nestedInts) {
        uint256[] memory _nestedUints = [_nestedInts];
        _myArray = _myArray;
        _nestedUints = _nestedUints;
    }
    bool validSize() view public function testSize() pure returns (bool valid) {
        valid = ((_myArray.length == 2) && (_myArray[0] == 3) && (_myArray[1] == 2));
    }
    function mutatorTest() external {}
}
