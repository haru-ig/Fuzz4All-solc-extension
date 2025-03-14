pragma solidity ^0.8.0;
contract Mutator {
    Mutator()
}
pragma solidity ^0.8.0;
contract Mutator {
    address payable _fallback;

    constructor () {
        _fallback = payable(msg.sender);
    }

    function _fallback() public payable {
        if (msg.value > 0) { revert(); }
        if (msg.data.length > 0) { revert(); }
    }

    uint256 public constant gas = 1000;

    function use() public {
        require(msg.data.length == 0);
        require(msg.value==0);
        require(gas == 1000);
        revert();
    }

    function nonpayable() public {
        if (msg.data.length > 0) { revert(); }
        _fallback.call{value: 5750}(new bytes(0));
    }

    receive() external payable {}
}
