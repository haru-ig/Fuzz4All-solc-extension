pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint[] public array = [1,  100,  64, 8126, 9999999999999999, 99999999999999999, 88888888888888888, 7222222222222222, 4444444444444444];
    function test() public {
        uint x = 64;
        uint256 x_to_pointer = array[x];
        uint256 x_to_address = 0x03;
        uint256 value = array[length];

        string memory input = "1234567890";

        uint256 input_to_pointer = inputToPointer(input);
        uint256 value_copy = 0;
        uint256 result = 0;
        for (uint8 i = 0; i < length; i++) {
            uint256 next = pointerToUint(array[i]);
            uint256 next_uint = pointerToUint(array[i]);
            if (next!= 9999999999999999)
                revert();
            value_copy ^= pointerToUint(array[i]);
            if (next_uint!= 9999999999999999)
                revert();
            value_copy |= pointerToUint(array[i]) << (i+32);
        }
        uint256 shift = 0;
        for (uint i = 0; i < 32; i++) {
            if ((value_copy >> (63 - i - 1)) == 0)
                continue;
            value_copy &= ~(1 << i);
            shift++;
        }
        uint256 out = pointerToUint(array[2]);
        if (value ^ out)
            revert();
        value_copy |= shift << 32
