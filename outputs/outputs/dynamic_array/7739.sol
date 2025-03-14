pragma solidity ^0.8.0;
contract Test5 {
    constructor (uint256[] storage) public {
        balances[msg.sender].push(10);
        balances[msg.sender].push(12);
    }
    function check(address a) public {
        emit();
    }
}

pragma solidity ^0.7.3;
contract Test4 {
    function foo() public view{
        for (uint8 i = 0; i < 3; i++) {
            balances[i].push(12);
        }
    }
}

pragma solidity ^0.8.0;
contract Test4 {
    constructor () public {
        balances[msg.sender].push(12);
    }
    mapping (address => uint256[]) public balances;
    address[] _dummyAddresses;
    function check(uint8 d) public {
        balances[_dummyAddresses[_dummyAddresses.length++-1]].push(d);
    }
}
