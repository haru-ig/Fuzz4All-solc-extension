pragma solidity ^0.8.0;
contract MyContract {
}
```

---

# 0.5 SOLIDITY SCHEDULING

## 0.5.1 CHAIN MANIPULATION

A basic chain can be represented using a single `chainlink.Link` contract. This contract needs to implement the following interface:

```solidity
contract Chainlink {
    function call(uint256 amount) external external pure;
}
```
Here are some examples of such a contract:

```solidity
contract Chainsimple {
    using Chainlink for Chainlink.LinkToken;

    uint public counter = 0;
    enum OperationType { Add, Divide, Multiplex }
	struct Operation {
		uint256 amount0;
		uint256 amount1;
		uint256 amount2;
		uint256 amount3;
		uint256 amount4;
		uint256 amount5;
	}

    uint256 public constant MAXIMUM_REWARD_BONUS = 5 * 10**18;
    uint256 reward_bonus_per_link = 10**18 * 15;
    address public reward_bonus_oracle = 0x0B0D9D13C41634cC7e895A0729d0234B062544c0;


	Chainlink.LinkToken public link = Chainlink.LinkToken(0x0a32A980444b19a4bf5809b0655b15D5B2F480c2);
	Operation[] public operations;
	uint public chain_count = 0;
}
```

Notice how we define the type `OperationType`. This is used as a label that differentiate several operations, including `Add`, `Divide`, `Multiplex`.

In the next example, we have a `Chain` contract that implements most of the methods used previously, but in a slightly more natural way. As seen below, we have defined the total number of links using `link_count`.
```solidity
contract Chain is Chainsimple {
	uint public link_count = 3;


    Chainlink.LinkToken public link = Chainlink.LinkToken(0x0a32A980444b19a4bf5809b0655b15D5B2F480c2);
    OperationType public operation = OperationType.Add;
