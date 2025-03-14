pragma solidity ^0.8.0;
contract Example10 {
    address payable addr;
    Example10S memory s;
...

pragma solidity ^0.8.0;
abstract contract Example9 {
    mapping(uint256 => mapping(address => uint256)) public count;
    uint256 public value;
    struct Example9S {
        address addr;
        address payable addrPayable;
        uint8 a;
        uint8 b;
        uint8 tx;
        bytes32 key;
        uint256 value;
    }
...

pragma solidity ^0.8.0;
contract Example7 {
    Example9S memory s;
    uint256 constant value = 0x88;
...

pragma solidity ^0.8.0;
contract Example8 {
    uint256 constant value = 0x88;
    function() private view returns (bytes memory) { return abi.encode(value); }
...

pragma solidity ^0.8.0;
contract Example18 {
...
