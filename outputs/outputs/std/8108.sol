pragma solidity ^0.8.0;
 contract Array_storage_with_new {
    uint256 public constant LENGTH = 3;
    uint256 public constant DEFAULT_DATA[LENGTH] = [4, 5, 6];

    uint256 public constant OTHER_LENGTH = 2;
    uint256[2] public constant OTHER_DATA = [
        uint256(482405439024242424242424200240),
        343434334343
    ];

    uint8 array_length;
    uint256 public data;

    constructor () {
        array_length = LENGTH;
        storage();
    }

    function change_array_length() public {
        array_length = OTHER_LENGTH;
        storage();
    }

    function clear_array_length() public {
        array_length = 0;
        storage();
    }

    function get_data() public view return (uint256) {
        return data;
    }

    function set_data() public {
        data = 13;
    }

    function get_array_length() public view returns (uint256) {
        return array_length;
    }

    function get_other_data() public view returns (uint256) {
        return OTHER_DATA[array_length - OTHER_LENGTH];
    }

    function get_other_data2(uint256 i) public view returns (uint256) {
        return i;
    }
}
