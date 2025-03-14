pragma solidity ^0.8.0;
contract Mutated4 {
    string public msg_;

    fallback () external payable returns (bool) {
        msg_ = "\tMutated4 fallback function called";
    }
    receive () external payable { }
}


pragma solidity ^0.8.0;
contract Mutation3 {
    string public msg_;
    constructor(string memory _msg) {
        msg_ = _msg;
    }

    fallback () external payable returns (bool) {
        msg_ = "\tMutation3 fallback function called";
    }
    receive () external payable { }
}
