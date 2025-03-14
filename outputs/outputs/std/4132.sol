pragma solidity ^0.8.0;
contract Memory2 {
	uint private _totalSupply;
	mapping (uint => address payable) private _payedAddresses;
	uint8 private _currentBalance;
}

pragma solidity ^0.8.0;
contract Memory3 {
	string[] private _b;
	constructor () public {
		_b.push("a");
		_b.push("b");
		_b.push("bb");
	}
	function getNumber () public view returns (uint) {
		return 33;
	}
}

/* Please write multiple tests which show how a contract behaves as expected:

1) Address is assigned the correct value when creating the contract

2) The address of the program is returned when calling the address function

3) The address of the `Memory` contract is returned when calling the `address` function of the `Memory2` contract

4) The value returned by the function passed in as the first parameter of the `arraySet` function of the `Memory2` contract

5) The value to be passed in as second parameter is the same value as is assigned in the constructor of the `Memory2` contract, as returned by the `getNumber` function

6) The values 2 to 5 within `calculateMoneyBack` function are passed in as parameters to the `transferOwnership` function of the `Memory3` contract with values 200 and 201, respectively

7) The `address(this)` value is set to `this.copyOfAddress` which equals `address(ofMemory)`

8) The total supply of the `Memory2` contract is returned when calling the `totalSupply` function of the `Memory2` contract

9) The `payedAddresses` mapping in the `Memory2` contract returns `this.payedAddressOfMemory`

10) The payed addresses of the `Memory3` contract contains the addresses of `this.payedAddressOfMemory` and `this.payedAddress1`

11) The `b` array inside the `Memory3` contract contains: "b[0] = \"a\"; b[1] = \"b\"; b[2] = \"bb\""

12) The addresses of the `Memory2` and `Memory3` contracts are returned in a mapping which is saved into a variable `memoryMapping` which was declared at the beginning of this contract

13) The `address` function of the mapping inside the contract should return address(mappingMemory) instead of address(memoryMapping)

14) If both `payedAddress1` and `payedAddressOfMemory` from `Memory2` and `Memory3` contract are set as values of `this.payedAddressOfMemory`, the address of the contract which is responsible for the paying the money should return `payedAddress1`

15) When adding values to an array, the size should be incremented by one
