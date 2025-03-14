pragma solidity ^0.8.0;
contract Test5 {
    address owner;
    address[] _addrs;
    mapping(address => uint256[]) balances;
    constructor() public {
        owner = msg.sender;
    }
    function check(address a) public {
        balances[a].push(9);
    }
    function addAddr(address a) public returns (bool) {
        _addrs.push(a);
        if (_addrs.length > 1) {
            balances[a].push(9);
        }
        return true;
    }

    function verify() public {
        for(uint i=0; i < _addrs.length; i++) {
            if (!balances[_addrs[i]]) continue;
            require(balances[_addrs[i]].length <= 1, "should be only one");
            if (balances[_addrs[i]].length > 1) {
                require(balances[_addrs[i]][balances[_addrs[i]].length - 1] == 9, "last element of array must be 9");
            }
        }
    }
}
