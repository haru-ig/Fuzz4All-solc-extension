pragma solidity ^0.8.0;
contract MutatedBlock9Mutator5 {
    mapping (address => uint) private _balances;
    function check() public view returns(uint) {
        uint x;
        x = 1;
        return x + _balances[msg.sender];
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock9Mutator6 {
    uint256 _balances;
    address test;
    constructor() {
        _balances = 0;
        test = msg.sender;
    }
    function withdraw() public {
        _balances = test;
    }
    function check() public view returns(uint) {
        uint x;
        x = 1;
        return x + _balances;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock9Mutator7 {
    uint public test;
    uint _balances;
    constructor() {
        _balances = 0;
        test = 0;
    }
    function withdraw() public {
        if(test!= 0) {
            _balances = test;
            test = 0;
        }
    }
    function check() public view returns(uint) {
        uint x;
        x = 1;
        return x + test;
    }
}
