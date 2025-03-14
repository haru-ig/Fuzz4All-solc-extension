pragma solidity ^0.8.0;
contract Test16 {
        uint8[1][1] storage mem;
        function add(uint32 x) public {
                mem[0][0]++;
        }
        function get_mem() public view returns (uint8 memory) {
                return (mem[0][0] + 69 + (1 << 0) + (1 << 1) + (1 << 2));
        }
}
