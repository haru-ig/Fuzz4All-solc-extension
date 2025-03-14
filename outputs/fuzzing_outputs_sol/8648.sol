pragma solidity ^0.8.0;
contract Mutator {
    mapping(address => uint256) amounts;
    receive() external payable {
        amounts[msg.sender]+=msg.value;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    Mutator public m;

    constructor (Mutator _m) { m = _m; }

    function test() external {
        require (true, "Not valid");
        m.test();
        m.receive();
    }
}
