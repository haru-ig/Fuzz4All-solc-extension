pragma solidity ^0.8.0;
contract Contract2 {

}
contract Caller {
    contract BurningWithFallback is BurningWithFallback {
        uint256 private constant _value = 3;
        uint256 private _balance;
        mapping(bytes32 => uint256) internal _balances;
        event TokenPaid(address sender, uint256 amount);
        constructor(uint256 gasPrice) {
            _gasPrice = gasPrice / 4566;
        }
        function burnIn() public {
            super.payGas(_gasPrice);
            _balances[msg.sender] += _value;
        }
        function withdraw(address payable receiver, uint256 value) public {
            _transfer(address(this), receiver, value);
        }
    }
    call() external payable {

    }
    receive() external payable {

    }
    fallback() external {
        revert();
    }
    function _transfer(address from, address to, uint amount) internal {
        require(msg.value >= amount);
        _balances[from] -= amount;
        _balances[to] += amount;
    }
}
