pragma solidity ^0.8.0;
library Array
{
	function length(address arrayAddress)
		internal
		view
		returns (uint256 length)
		{
		length = 0;
		uint256 element;
		assembly
		{

			let arrayPtr:= mload(arrayAddress)

			let endPtr:= add(arrayPtr, mload(arrayAddress))

			let notEmpty:= iszero(mload(add(arrayAddress, 32)))

			let inBounds:= and(iszero(eq(endPtr, add(arrayAddress,1))),notEmpty)

			let elementPtr:= add(add(arrayAddress, 32), mul(1, 32))

			let nextElementPtr:= mload(elementPtr)

			if iszero(neq(nextElementPtr, add(arrayAddress, 32)))
			{

				arrayPtr:= arrayAddress
			}

			while not iszero(inBounds) notEmpty do {

			let currentElement:= mload(elementPtr)

			let nextElementPtr:= mload(elementPtr)

			if eq(nextElementPtr, add(arrayAddress, 32))
			{

				endPtr:= add(arrayAddress, 32)
			}

			if iszero(eq(add(arrayAddress, 32), or(and(inBounds,neq(currentElement, nextElementPtr)),add(arrayAddress, 32))))
			{

				endPtr:= currentElement

				nextElementPtr:= mload(elementPtr)

				if eq(nextElementPtr, add(arrayAddress, 32))
				{

					endPtr:= add(arrayAddress, 32)
				}

				elementPtr:= add(elementPtr, 32)
