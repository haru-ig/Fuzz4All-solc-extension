pragma solidity ^0.8.0;
contract LowLevelCall{
	uint256[7] public a;

	receive() external payable {}

	fallback() external payable {
		a[0] = msg.value;
		a[7] = msg.value;
	}
}


<commit_msg>Add a pragma to the test contract to silence solium error (#135)<commit_after>pragma solidity >=0.6.0 <0.8.0;

library Strings {
    function toString(uint256 v) internal pure returns (string memory) {

        require(v < 2**128);
        uint256 tmp = v;
        uint256 digits;


        while (tmp!= 0) {
            digits++;
            tmp /= 10;
        }

        --digits;


        string memory s = digits > 0? new string(digits) : "0";
        while (v!= 0) {
            digits -= 1;
            uint256 tmpDigit = v % 10;
            v /= 10;
            s[digits] = byte(uint8(48 + tmpDigit));
        }

        return s;
    }
}


/* You can see that contracts must have non-zero fallback function signatures and that they can have
multiple fallback functions. If a contracts contains no fallback function it means that it does not
implement any functionalities. The documentation of the contract describes the usage and functionality of
the fallback function in Solidity contracts. A contract can have only one fallback function, which is
executed if none of the other functions match the given function signature, or if no data was supplied
at all. This function always receives data and must be marked payable to also receive Ether.

The fallback function can execute complex operations as long as there is enough gas passed on to it. However,
it's recommended to always define a receive Ether function as well if you define a payable fallback function
to distinguish Ether transfers from interface confusions.

The documentation also provides examples of contracts with fallback functions. In the first example, sending Ether
to the contract will cause an exception because the fallback function does not have the `payable` modifier. In the
second example, the fallback function is called for all messages sent to the contract, except plain Ether transfers.
The receive function is called for plain Ether transfers.

The last contract, Caller, demonstrates how to call these contracts and handle potential failures. It shows that if
someone sends Ether to a contract, the transfer will fail if the contract doesn't have a payable fallback
function. It also shows how to use a low-level call to send Ether to a contract with a receive function
that writes to storage
