pragma solidity ^0.8.0;
contract Test {
    uint256 public total;
    uint256 public total2;
    uint internal total3;
    uint internal total23;
    internal function set(
        uint count,
        uint256 total,
        uint256 total2,
        uint32 total3,
        uint256 total23)
    public {
        total = count;
        total2 = total;
        total3 = total3;
        total23 = total23;
    }
    function get() public {
        total = 4;
        total2 = 400;
        total3 = 0xff;
        total23 = 0xffff;
    }
}
pragma solidity ^0.8.0;
contract Test {
    bytes32 public total;
    bytes32 public total2;
    bytes32 internal total3;
    bytes32 internal total23;
    function set(
        bytes32 count,
        bytes32 total,
        bytes32 total2,
        bytes32 total3,
        bytes32 total23)
    public {
        total = count;
        total2 = total;
        total3 = total3;
        total23 = total23;
    }
    function get() public {
        total = "hello";
        total2 = "hello2";
        total3 = "0xff";
        total23 = "0xffff";
    }
}
