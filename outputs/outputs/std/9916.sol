pragma solidity ^0.8.0;
contract S13Mutated14 {
    function createN_array(uint8 length) public pure returns (uint8[] memory) {
        uint8[] memory n_array_with_length;
        for (uint i = 0; i < length; i++) {
            n_array_with_length.push(i+1);
        }
        return n_array_with_length;
    }
}



contract test_Bitwise {

    function isPowerOfTwo() public pure {
        require(Bitwise.isPowerOfTwo(5));
    }

    function createN_array() public pure {
        uint8[] memory n_array = Bitwise.createN_array(5);
        uint8 i;
        for (i = 0; i < 5; i++) {
            if (n_array[i]!= i+1) {
                break;
            }
        }
        require(i == 5);
    }
}
contract test_Convert {

    function parseInt() public pure {
        bool error;
        int memory tmp_int = Convert.parseInt("42", 10, true, error);
        require(!error && tmp_int == 42);
        tmp_int = Convert.parseInt("", 10, true, error);
        require(!error && tmp_int == 0);
        tmp_int = Convert.parseInt("-123", 10, true, error);
        require(!error && tmp_int == -123);
