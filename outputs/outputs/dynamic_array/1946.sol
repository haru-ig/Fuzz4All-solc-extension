pragma solidity ^0.8.0;
interface Inheritance {
    function setField(uint256 _field) external;
    function getField() external view returns (uint256 _field);
    function getFieldPointer() external view returns (uint256[] memory _field);
    function getZeroFieldPointer() external pure returns (uint256[] memory _field);
    function setZeroFieldPointer(uint256[] memory _field) external;
}
contract InheritanceToDynamicArraysAssignment_2 is Inheritance {
    constructor() public {}
    mapping(uint256 => uint256) public field;
    uint256 public size;
    constructor() public {
        field = new mapping(uint256 => uint256[](2));
        field[1] = new uint256[](1);
        size = 2;
        setField(3);
        setField(3);
        setField(1);
    }
    function setField(uint256 _field) public pure {
        field[_field] = new uint256[](1);
        field[_field][0] = 1;
    }
    function getField() external view returns (uint256 _field) {
        _field = field[1][0];
    }
    function getFieldPointer() public view returns(uint256[] memory _field) public pure {
        _field = field[1][0];
    }
    function getZeroFieldPointer() public pure returns (uint256[] memory _field) public {
        _field = new uint256[](1);
        _field[0] = 0;
    }
    function getDynamicFieldsLength() public view returns (uint256 length) public {
        return size;
    }
    function setZeroFieldPointer(uint256[] memory _field) public pure {
        field[4] = _field;
    }
}
