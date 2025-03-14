pragma solidity ^0.8.0;
struct Mutator {
    uint256 x = 3;
}
contract BurningWithMutator {
    mapping (address => uint256) private _balances;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {}
    fallback () external {
        _balances[msg.sender] -= _gasPrice;
    }
    fallback() public payable {
        emit TokenPaid();
    }
    error Revert() {}
    error UnsupportedFunction() {}
    event TokenPaid();
    function fallback() public payable {
        return __fallback();
    }
    function __fallback() public pure {
        _balance -= _gasPrice;
    }
}

pragma solidity ^0.8.0;
import "./Mutator.sol";
contract BurningWithMutator2 {
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {}
    fallback () external {

        return _get_call_data();
    }
    fallback() public payable {
        emit TokenPaid();
    }
    function get_call_data() public pure returns (bytes memory) {
        return abi.encode(msg.data);
    }
    error Revert() {}
    error UnsupportedFunction() {}
    event TokenPaid();
}
