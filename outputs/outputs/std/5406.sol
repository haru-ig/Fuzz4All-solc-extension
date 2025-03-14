pragma solidity ^0.8.0;
contract Mutate10 is Mutate11 {
    uint[3] arr;
    address[3] arrAddr;
    mapping (uint => string) arrStr;
    mapping (uint => address) arrAddrStr;
    mapping (uint => address[]) arrAddrList;
    modifier containsKey(uint key, string memory str) {
        require(str.length > 0, "Cannot use a string with an empty length.");
        if (key.length > 32) {
            require(key <= 2**32 - 1, str == "too long");
        } else {
            require(key <= 2**8 - 1, str == "too short");
        }
        _;
    }

    constructor() {
        arr[1] = 10;
        arr[3] = 15;
        arrAddr[1] = keccak256("owner");
        arrAddr[2] = keccak256(abi.encode("me"));
        arrAddr[3] = keccak256(abi.encode(address(this), "str"));
        arrStr[4] = "s";
        arrStr[255] = "🥑🍑";
        arrStr[32] = "🥑";
        arrAddrStr[4] = keccak256("me");
        arrAddrStr[255] = keccak256("me");
        arrAddrStr[32] = keccak256("me");
        arrAddrList[5] = arrAddr;
        arrAddrList[11] = arrAddrStr;
        arrAddrList[20] = arrAddrList;
    }
    function writeArray() public {
        arr[4] = 13;
        arr[253] = 16;
        arr[255] = 0
