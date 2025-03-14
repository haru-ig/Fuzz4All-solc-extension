pragma solidity ^0.8.0;
contract Array_42 {
    function array_42_test() public {
        function is_integer(string memory str) internal view returns (bool) {
            bool success = false;
            uint256 last_index = str.length;
            for (uint256 i = 0; i < last_index; i++) {
                byte c = byte(str[i]);
                success = (success || (c < '0' && c > '9'));
            }
            return (char(str[last_index - 1]) == '0') || success;
        }

        mapping (uint256 => uint64) mem;
        for (uint256 i = 0; i < 10000; i++) {
            mem[i] = i;
            if ((i % 100) == 3) mem[i + 32] = msg.sender;
            if ((i % 10) == 9) mem[i + 300] = msg.sender;
        }
        require(mem[786] == 0x0000000000000000000000000000000000000000000000000000000000000000000);
        require(mem[mem.length - 1] == 0xffffffffffffffffffffffffffffffffffffffffffffffff);
        require(mem[mem.length - 2] == 0xffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000);


        require(mem[32] == msg.sender);

        require(mem[300] == msg.sender);

        uint64 addr_1 = mem[mem.length - 32];

        uint64 addr_2 = mem[mem.length - 32];
        require(addr_1 == mem[786]);
        require(addr_1 == msg.sender);
        require(addr_1 == addr_2);
    }
}
