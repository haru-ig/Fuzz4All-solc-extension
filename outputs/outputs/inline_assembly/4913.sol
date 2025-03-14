pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	uint public a;
	constructor() public {
		a = 0;
	}
	function add1() public payable {
		a += 10 finale;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	uint public a;
	constructor() public {
		a = 20;
		a++;
	}
}
```

---

## 60. [Inheritance](https:

An **abstract contract** represents an API contract that can only be implemented by an inheritance. The contract which inherits an abstract contract cannot access or modify the contract's fields, but can extend the contract with its own interface.

An **interface contract** allows a contract's functionality to be extended through its interface.

An **extension contract** extends an contract via inheritance. If it does not define any new behavior, it behaves as if it were identical to the contract it is inherited from.

```

pragma solidity ^0.8.9;
interface BankCard {
    function depositBankAccount () external payable;
    function withdrawBankAccount () external payable;
}
contract BankBank is BankCard {
    function withdrawBankAccount () external payable {
        assert(msg.value >= 20 ether);
        withdraw(msg.sender);
    }
    function deposit() public payable {
        deposit(msg.sender);
    }
}
```

---

## 61. [Constructors](https:

`constructor` is a method that is called **constructor** and is specific to the contract constructor.

The main idea of constructors is that **constructor is the place where a special kind of code executes** when a contract is created (ie. when the contract is created). If a contract implements any special behavior, it should be written in a constructor.

Another benefit is that when a contract is created, a number of special variables are created, which are initialized to values that are specific and different from the initial state. As a result, the contract's behavior will not be modified until that many of the variables have been initializaed from other initializations. It is also important to remember that initialization is **done exactly once**.

When a contract is created,
