pragma solidity ^0.8.0;
contract B2 {
    uint public constant _uint32 = 16**60;
    uint public constant _uint64 = 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        return (_uint64 * _uint32) - 1;
    }
}

pragma solidity >=0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        return (_uint64 * _uint32) % (_uint64 - 1);
    }
}
contract B {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        return (_uint64 * _uint32) * 2 - (_uint64 - 2);
    }
}
contract B3 {
    function mutated(uint) public pure returns (uint) {
        uint[] storage arr = new uint[](2);
        arr[0] = 16**60;
        arr[1] = 1_000_000_000;
        uint a = arr[0];
        uint b = arr[1];
        return ((b * a) / (_uint64 - 1));
    }
}


pragma solidity >=0.8.0;
pragma experimental ABIEncoderV2;
contract Lottery {
    constructor (address payable token) {
        payable(msg.sender).transfer(_uint64(this.calldata, token) / 1000);
    }
    function calldata (uint32 x, address payable) public pure returns (uint) {
        return _uint64(x);
    }
    function _uint64 (uint32 x, address payable a ) public pure returns (uint64) {
        return uint64(a);
    }

    uint32 payable _beneficiary;
    uint public prizes;
    bool prizeChanged;
    address payable public receiver;
    uint immutable _uint32 = 16**9;
    uint immutable _uint64 =
