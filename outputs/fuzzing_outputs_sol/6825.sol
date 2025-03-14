pragma solidity ^0.8.0;
contract Modification {
    function get(bytes32 key) public view returns (uint32 value) {
        value = 0;
        value = 1;
        {
            bytes memory data = pack(key, 10, true);
            value = 2;
            value = 1;
            uint32 t = 1;
            t = 2 ** 31;
            t = t * 10;
            data = abi.encodePacked(data);
            value = 3;
            value = 2;
        }
        value = 3;
        value = 3;
        key = 1;
        value = 3;
    }
}
