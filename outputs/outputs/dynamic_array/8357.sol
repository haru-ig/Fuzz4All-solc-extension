pragma solidity ^0.8.0;
address payable aAddress;
contract Solidity8To14 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 6;
        b = 2;
        maxA = 4;
    }
    function changeAddress(address payable addr) public {
        aAddress = addr;
    }
    function increment() public {
        if(msg.value < 1 ether) return;
        a = a + 1;
        b = b + 3;
        if (aAddress == payable(msg.sender)) maxA = maxA + 3;
    }
}

pragma solidity ^0.8.0;
contract Solidity8To14 {
    address payable[] public addrToAddr;
    uint8 maxAddr;
    string test;
    uint testArray;
    constructor() public {
        test = "Hello";
        maxAddr = 3;
        testArray = 2;
    }
    function changeAddress(address payable addr) public {
        maxAddr = addr;
    }
}

pragma solidity ^0.8.0;
contract Solidity8To14 {
    uint256 minAmount;
    uint8 minAmountInt;
    uint8 public testInt;
    uint256[] public testArray;
    bytes[] public testBytes;
    constructor() public {
        minAmount = 1 ether;
        minAmountInt = 1;
        testInt = 3;
        uint256[] memory a = new uint256[](2);
        uint256[] memory b = new uint256[](4);
        uint256[] = [1, 2];
        bytes[] memory a1 = new bytes[](4);
        bytes[] memory b1 = new bytes[](
