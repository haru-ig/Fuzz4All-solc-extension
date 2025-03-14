pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public payable returns (address) {
        return msg.sender;
    }
    function internalCall() public payable returns (address) {
        return msg.sender;
    }
    fallback() payable external {
    }
}

pragma solidity ^0.8.0;
contract Mutant {
    function normalCall(address _to) public payable returns (address) {
        return _to;
    }
    function internalCall(address _to) public payable returns (address) {
        return _to;
    }
    fallback() payable external {
    }
}

pragma solidity ^0.8.0;
contract Mutant {
    function normalCall() public payable returns (address) {
        return msg.sender;
    }
    function internalCall(uint _n) public payable returns (address) {
        address[28] memory list;
        list[0] = 0xabcdef;
        list[list.length - 1] = 0xffdef0;
        return _n;
    }
    fallback() payable external {
    }
}
