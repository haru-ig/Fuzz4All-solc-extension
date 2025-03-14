pragma solidity ^0.8.0;
contract Test1805 {
    mapping(uint8 => uint8) public map;

    function set(uint8 k, uint8 v) public {
        require(m <= k);
        map[k] = v;
    }
    function get(uint8 k) public view returns (uint8) {
        return map[k];
    }
    function get2() public view returns (int43) {
        uint8 x = get(x);
        return x;
    }
    function get3() public view returns (int43) {
        uint8 x = 128;
        uint8 y = 128;
        uint8 z = get(x);
        return uint43(x | y | z);
    }
}

pragma solidity ^0.8.0;

contract Test1806 {
    uint8[4] public array;
    function set(uint8 index, uint8 value) public {
       array[index] = value;
    }
    function get(uint8 index) public view returns (uint8) {
       return array[index];
    }
}
