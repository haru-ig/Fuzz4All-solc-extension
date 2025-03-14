pragma solidity ^0.8.0;
contract Mutated2 is Mutated3 {
    string private _msg;
    function __callback() external returns (string memory) {
        _msg = _m;
        selfdestruct(msg.sender);
    }
    constructor(string memory _msg) {
        _msg = _msg;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    Mutated2 public a_;
    mut bool public _is_not_compiled_;
    function __callback() public view returns(Mutated2 memory){
        a_.msg_;
        a_.msg_;
        a_.msg_;
    }
    constructor(Mutated2 memory a) {
        a_ = a;
    }
    function get() public returns(Mutated2 memory){}
    function set(Mutated2 memory a) public {
        a_ = a;
    }
    function f(Mutated2 memory _a) public {
        a_.set(_a);
        a_.get();
    }
}
