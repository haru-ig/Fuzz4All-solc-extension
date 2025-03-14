pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 m_array;
    mapping (uint256 => address) indexes;
    uint256 [6] m_field;
    mapping (address => uint8) m_field2;
    mapping (uint256 => uint256) array2;
}
interface ArrayExampleInterface {
    function getLength() external view returns (uint256);
    function getElement(uint256) external view returns (uint256 length, uint256, uint256);
}

pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 m_array;
    uint256 m_length;
    uint256[999999] public array;
    uint8 m_offset;
    mapping (uint256 => address) indexes;
    uint256[7] m_field1;
    mapping (address => uint256) m_field2;
    mapping (uint256 => address) indexes_address;
}
contract ArrayExample2 {
    uint256 m_array;
    uint256 m_length;
    uint256[999999] public array;
    uint8 m_offset;
    mapping(uint256 => address) indexes;
}

contract ArrayExample2 {
    uint256 m_array;
    uint256 m_length;
    uint256[999999] public array;
    uint8 m_offset;
    mapping(uint256 => address) indexes;
    uint256[7] m_field1;
    mapping(address => uint256) m_field2;
    mapping(uint256 => uint256) array2;
}

contract ArrayExample {
    uint256 m_array;
    uint256 m_length;
    uint256[999999] public array;

    mapping (uint256 => address) indexes;
    uint256[7] m_field1;
    mapping (address => uint256) m_field2;
    mapping (uint256 => uint256) array2;
}
abstract contract ArrayExample3 {
    uint256 m_array;
    uint256 m_length;
    uint256[999999] public array;

    mapping (uint
