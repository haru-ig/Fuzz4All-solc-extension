pragma solidity ^0.8.0;
contract TestCall {
    uint8 public b[27];
    uint256 public result = 0;
    function () external {
        for (uint256 i = 0; i < 27; i++) {
            Memory.store(address(this), i, uint256(b[i]));
            if (Memory.load(address(this), i) == (byte)(i)) {
                result += uint256(b[i]);
            }
        }
    }

    function f2() returns(uint256) public override beforeG {
        uint8[] memory b256Array = abi.decode(Memory.load(address(this), 0),(uint8[]));
        for (uint256 i = 0; i < b256Array.length; i++) {
            uint8 memory temp0 = b256Array[i];
            assert(temp0!= (byte)i);
            Memory.store(address(this), i, (byte)i);
            if ((b256Array[i]) == (byte)i) {
                result += uint256(temp0);
            }
        }
        return result;
    }

    function main() public view beforeG {}

}
