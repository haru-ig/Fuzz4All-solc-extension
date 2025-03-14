pragma solidity ^0.8.0;
contract Array {

    bytes32 constant A = keccak256('A');
    mapping(address => uint[]) array_to_change;
    uint[] public myArray_from_storage;


    function getStoredValue(address a) public view returns(uint[]) {
        require(a!= address(0), "Array.sol: address == 0");
        return array_to_change[a];
    }


    function set(uint[] memory aArray_to_change) public {
        uint len = aArray_to_change.length;
        require(0 <= len && len <= 2, "Array.sol: length > 2 || length < 0");

        for (uint i = 0; i < len; i++) {
            uint val_i;

            assembly {
                val_i := mload(add(aArray_to_change, 12 * i))
            }

            array_to_change[msg.sender][i] = val_i;
        }
    }



    function getArray(uint len) public view returns(uint) {
        return array_to_change[msg.sender][len];
    }



    function updateArray(uint len, uint val) public {
        uint len_check = array_to_change[msg.sender].length - 1;
        require(

          ((uint(len_check) == 0 && len < 1) || (len == 1 && len_check > 1) || (uint(len) == 0 && len > len_check)),
          "Array.sol: invalid index and length combination"
        );

        len = (len_check>len)? len_check : len;
        uint newVal = array_to_change[msg.sender][len] + val;
        uint[] memory newValArray = new uint[](2 * array_to_change[msg.sender].length + 1);
        for (uint i = 0; i < len; i++) {
            newValArray[i] = array_to_change[msg.sender][i];
        }

        newValArray[len] = newVal;

        for (uint i = len+1; i < 2 * array_to_change[msg.sender].length +
