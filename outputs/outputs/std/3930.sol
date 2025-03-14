pragma solidity ^0.8.0;
contract Array
{

    string[] public strings;

    function add() public {
    uint64 len = strings.length;
    strings.push("Hello, World!");
    strings.push("Hi, there!");
    strings.push("Yes, I can!");
    strings.push(bytes32(uint64(0xDEADBEEF)));
    strings.push("Hello, World");
    strings.push("Hello, World, World, World!");

    }
}

pragma solidity ^0.8.0;
contract Array
{

    string[] public strings;

    function add() public {
    uint64 len = strings.length;
    strings.push("Hello, World!");
    strings.push("Hi, there!");
    strings.push("Yes, I can!");
    strings.push(bytes32(uint64(0xDEADBEEF)));
    strings.push("Hello, World");
    strings.push("Hello, World, World, World!");

    }
    function get() public view returns (uint64) {
    return len;
    }
    function get2() public view returns (uint64) {
    return strings[0];
    }
    function get3() public view returns (uint64) {
    return bytes32s([0xDEADBEEF]);
    }
    function get4() public view returns (uint64) {
    return strings[4];
    }
}
