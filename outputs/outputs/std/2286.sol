pragma solidity ^0.8.0;
interface IConvertible {
    function toUint(string memory) external returns (uint256);
}

pragma solidity ^0.8.0;
interface IArray {
    uint256[] array_read() external view returns (uint256[] memory);
    uint256 set_array_to(uint256[] memory) external;
    uint256 array_write(uint256 _a) external;
}
pragma solidity ^0.8.0;
interface IGetTheAddress {
    address addr_read() external view returns (address);
}
pragma solidity ^0.8.0;
interface IAddArithmetic {
    uint256 add(uint256 a, uint256 b) external returns (uint256 c);
}
pragma solidity ^0.8.0;
contract Test {
    IAddArithmetic add;
    uint256 num_int;
    uint256 memory_int;
    uint256 string_int;
    uint256[3] int_array;
    uint256[5] int_array2;
    address[6] addr_int;
    string[7] string_int2;

    constructor() public {
        add = new IAddArithmetic();
    }


    function set_and_read_memory(uint256[] memory _memory) private returns (IConvertible memory_int_cast) {
        memory_int = _memory[0];
        memory_int_cast = memory_int_cast();
        return memory_int_cast;
    }


    function test_write_back_backwards_pointer(IGetTheAddress memory_int_pointer, uint256[0] memory) private returns (uint256 memory2) {
        memory2 = memory_int_pointer();
        return memory2;
    }

    function test_memory_int_readback() private returns (uint256[] memory) {
        return set_and_read_memory(int_array);
    }

    function test_swap() private returns (uint256) {
        uint256 memory tmp = int_array[0];
        int_array[0] = int_array[6];
        int_array[6] = tmp;
        return int_array[0];
    }

    function test_set_array_into_memory(uint256 i) private returns (IArray memory mem_int_wrap) {
        mem_int_wrap = IArray(int_array);
        mem_int_wrap.array_write(99);
        mem_int_wrap.set_array_to
