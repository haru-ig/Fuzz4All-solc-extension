pragma solidity ^0.8.0;
contract Contract12Mut1 {
    event Fulfilled(address owner, uint256 indexed value);

    uint256 public num;
    constructor(uint256 value) {
        num = value;
    }

    function sendEther(uint256 _value)
        external payable
    {
        require(num >= _value, "Contract12Mut1: Value out of bounds");
        revert();
    }
}
pragma solidity ^0.8.0;
contract Contract12 {
    event Fulfilled(address owner, uint256 indexed value);

    uint256 public num;
    uint256 public storageValue;
    constructor(uint256 value) {
        num = value;
        storageValue = num;
    }

    function getStorageVar()
        external view
        returns (uint256 storageValue)
    {
        return storageValue;
    }

    function sendEther(uint256 _value)
        external payable
    {
        require(_value == 42, "Contract12: Wrong value");
        uint256 storageValue1 = num;
        storageValue += num;
        emit Fulfilled(msg.sender, storageValue);
    }
}
pragma solidity ^0.8.0;
interface I1 {
    function returnInt()
        external
        returns (int);
}
pragma solidity ^0.8.0;
contract Receiver12 {
    event Fulfilled(address owner, uint256 indexed value);
    I1 public 11;
    constructor(uint256 value) {
        uint256 data = 42;
        num = data;
    }
    function getReturnInt()
        external
        returns (int)
    {
        return num;
    }

    function sendEther()
        external
        payable
    {
        uint256 num;
        num = 42;
        uint256 _test = num;
        num = 42;
        11.returnInt();
        I1 _test2 = I1(0x00);
        I1(0x00);
        I1(0x00);
        num = 42;

        I1 _test3 = I1(0x00);
        I1 _test5;
        _test5 = I1(0x00);
        uint256 _test6 = num;
        _test6 = num;
    }
}
pragma solidity ^0.8.0;
contract Caller12 {
    event Fulfilled(address owner, uint256 indexed value);
    I1 public 11;
    Receive(uint256 value) {
        returnInt = I1(0x00);
        uint256 _return = uint256(returnInt);
        uint256 _return2 = value;
        uint256 _return3;
        _return3 = 42;
    }
    function
