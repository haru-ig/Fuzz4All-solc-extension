pragma solidity ^0.8.0;
contract MultipleReturn0x0 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn() public returns (uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        return (5 - num, 6 - num);
    }
    function multipleReturn0x0() public returns (uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        return (5 - num, 6 - num);
    }
    function multipleReturn2() public returns (uint, uint, uint, uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        num = 40;
        return (
            num,
            58 / (x + 1),
            x * x,
            x * (x * (x * num + 1)) + 13,
            num
        );
    }
}


pragma solidity ^0.8.7;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this;
        return msg.data;
    }
}



pragma solidity ^0.
