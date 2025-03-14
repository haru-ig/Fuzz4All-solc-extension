pragma solidity ^0.8.0;
contract Example9 {
    event ContractSet(address addr, bytes32 key, uint value, uint value2);
    mapping (address => uint[]) public balances;
    mapping (address => uint[]) public addr2balance;
    mapping (address => uint[]) public addr2addr2balance;
    function set(address addr, bytes32 key, uint value, uint value2) public {
        balances[addr][uint(key)] = value;
        addr2balance[addr][uint(key)] = value2;
        addr2addr2balance[addr][uint(key)] = value2;
        emit ContractSet(addr, key, value, value2);
    }
    uint x;
    uint y;
}


contract TokenInterface {
    function balanceOf(address _owner) public view returns (uint balance);

    event Transfer(address indexed _from, address indexed _to, uint _value);
}

library SafeMath {

function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a);

    return c;
}


function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    return sub(a, b, "SafeMath: subtraction overflow");
}


function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;

    return c;
}


function mul(uint256 a, uint256 b) internal pure returns (uint256) {



    if (a == 0) {
        return 0;
    }

    uint256 c = a * b;
    require(c / a == b);

    return c;
