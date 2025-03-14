pragma solidity ^0.8.0;
contract Mutators {
    function changeSymbol(bytes32 newName) public {
        bytes memory newNameStr = bytes(newName);
        bytes memory oldName = bytes(symbol_);
        balances[msg.sender] = addBytes32(oldName, new bytes32(newNameStr));
    }

    function decrease(uint256 delta) public {
        balances[msg.sender] = sub(balances[msg.sender], delta);
    }

    function increase(uint256 delta) public {
        balances[msg.sender] = add(balances[msg.sender], delta);
    }

    function increaseOfSymbol(bytes32 symbol, uint256 delta) public {
        bytes memory newSymbol = bytes(symbol);
        bytes memory oldSymbol = bytes(symbol_);
        balances[msg.sender] = add(addBytes32(oldSymbol, new bytes32(newSymbol)), delta);
    }

    function isPositive(uint256 value) public view returns (bool) {
        return value >= 0;
    }
}
contract Number {
    NumberMutators public mutableStorage_;

    constructor () {
        totalSupply_ = 0;
        balances[msg.sender] = 0;
        balances[0xCFB0a6e5A057b9f0Ca40693aEcf85a8BE50304B7] = 100000 * 10**18;
    }


    function createNumber(uint256 number, uint256 precision) public payable returns (uint256) {
        totalSupply_ = add(totalSupply_, 1);
        mutateStorage_();
        balances[msg.sender] = add(balances[msg.sender], number);
        mutateStorage_();
        return number;
    }


    function createString(string memory s) public returns (bytes32) {
        string memory str = s;
        mutateStorage_();
        bytes memory bytesStr = bytes(str);
        bytes32 id = keccak256(abi.encodePacked(symbol_, bytesStr));
        balances[msg.sender] = add(balances[msg.sender], id);
        mutateStorage_();
        return id;
    }

    function readString(bytes32 key) public returns (bytes memory) {
        bytes memory bytesKey = bytes(keccak256(abi.encodePacked(symbol_, key)));
        return
