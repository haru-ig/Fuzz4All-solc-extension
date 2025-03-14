pragma solidity ^0.8.0;
abstract contract Example9 {
    uint payable _previousBalance;
    constructor () {
        _previousBalance = msg.value;
    }
    function transfer(uint256 amount) public virtual {
        if (_previousBalance < amount) {
            revert();
        }
        _previousBalance -= amount;
    }
}

pragma solidity ^0.8.0;
contract Example11 is Example9 {
}
