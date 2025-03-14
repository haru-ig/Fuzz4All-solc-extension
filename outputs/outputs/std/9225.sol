pragma solidity ^0.8.0;
contract AccessingContract {
    function returns_byte_array(uint256 value) public pure returns (uint256[]) {
        uint256[] memory a = new uint256[](1);
        a[0] = value;
        return a;
    }
    function returns_byte_array_of_integers(uint256 value) public pure returns (uint256[]) {
        uint256[] memory a = new uint256[](1);
        a[0] = value;
        return a;
    }
    function returns_byte_array_of_bytes(uint256 value) public pure returns (uint256[]) {
        uint256[] memory a = new uint256[](1);
        a[0] = value;
        return a;
    }
}
contract MutatingContract {
    bool public flag;
    bytes32 public hash_bytes_0;
    bytes32 public hash_bytes_1;
    bytes32 public hash_bytes_2;
    bytes32[] public array_b;
    function set_flag_to_false() public {
        flag = false;
    }
    function set_flag_to_true() public {
        flag = true;
    }
    function set_hash_bytes_0(bytes32 _hash_bytes_0) public {
        hash_bytes_0 = _hash_bytes_0;
    }
    function set_hash_bytes_1(bytes32 _hash_bytes_1) public {
        hash_bytes_1 = _hash_bytes_1;
    }
    function set_hash_bytes_2(bytes32 _hash_bytes_2) public {
        hash_bytes_2 = _hash_bytes_2;
    }
    function set_hash_bytes_array_b(bytes32[] memory _array_b) public {
        array_b = _array_b;
    }
