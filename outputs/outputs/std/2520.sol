pragma solidity ^0.8.0;
contract A {






    mapping (address => uint256) internal balances;


    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
contract B is A {
    function increaseBalance(uint256 val) public payable {
        balances[msg.sender] += val;
    }
}
contract C is A {








    function increaseBalance(address _to, uint256 _w) public payable {
        balances[_to] += _w;
    }
}
