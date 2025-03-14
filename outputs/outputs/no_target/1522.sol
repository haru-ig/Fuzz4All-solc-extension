pragma solidity ^0.8.0;
contract Semantic0035 {
    modifier onlyCaller() {
        address caller = msg.sender;
        assert(caller == msg.sender);
        _;
    }
    function same() public pure {
        uint[] memory x = new uint[](5);
        while(true) {
            x[0] = 0;
        }
    }
}
```

```console
$ solium semantic0035.sol
Semantically equivalent
```

- You will need to run `npx solium semantic0035.sol` to check your fix

**Example: 00076**

```solidity

pragma solidity >=0.7.0 <0.9.0;

pragma experimental ABIEncoderV2;
contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


contract Pauser {

    event Paused(address indexed account, address indexed pauseer);

    modifier whenNotPaused() {
        require(!paused(), "The contract is paused");
        _;
    }

    modifier whenPaused() {
        require(paused(), "The contract is not paused");
        _;
    }

    function pause() public virtual whenNotPaused {
        paused_ = true;
        emit Paused(_msgSender(), address(0));
    }
    /**
