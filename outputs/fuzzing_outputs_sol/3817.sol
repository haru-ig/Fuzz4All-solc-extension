pragma solidity ^0.8.0;
contract Example20 {
    event Log(address _from, address _to);
    constructor(address example21_) {
        Log(msg.sender, example21_);
    }
    receive () is not payable {
        emit Log(msg.sender, msg.sender);
    }
}
contract Example22_Caller {
    event Log(address _from, address _to);
    constructor(address example23_) {
    }
    function test() is not payable {
        emit Log(msg.sender, msg.sender);
    }
    receive() {
        emit Log(msg.sender, msg.sender);
        selfdestruct(address(this));
    }
}

pragma solidity ^0.8.0;
contract Example24 {
    event Log(address _from, address _to);
    constructor(address example25_) {
    }
    function test() is not payable {
        selfdestruct(msg.sender);
    }
    receive() {
        emit Log(msg.sender, msg.sender);
    }
    fallback() {
        selfdestruct(msg.sender);
    }
}
contract Example28_Example27_Contract {
    function test() is not payable {
        selfdestruct(address(this));
    }
    receive() {
        emit Log(msg.sender, msg.sender);
    }
}
contract Example32_Example31_Caller {
    address example33_;
    function test() is not payable {

        selfdestruct(example33_);
    }
    receive() {
        emit Log(msg.sender, msg.sender);
    }
    constructor(address example34_, uint _address) {
        example33_ = _address;
    }
}
contract Example35_Caller {
    event Log(address _from, address _to);
    address example36_;
    uint example37_;
    constructor(uint _address, address _code) {
    }
    function test() is not payable returns (uint) {
        selfdestruct(example36_);
        return 1;
    }
    receive() {
        emit Logs(msg.sender, msg.sender);
    }
    fallback() {
        example35_;
        emit Logs(msg.sender, msg.sender);
    }
}
contract Example38_Constructor_Fallback {
    event Log(address _from, address _to);
    constructor(address example40_) {
    }
    function test() {
        selfdestruct(example40_);
    }
    receive() {
        emit Log(msg.sender, msg.sender);
    }
}
contract Example41_Example40_Caller {
    address example42_;
    uint example43_;
    function test() is not payable {

        selfdestruct(example42_);
    }
    function test2(
