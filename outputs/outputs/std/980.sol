pragma solidity ^0.8.0;
contract Multisig
{
	address payable[] multiSigAddress;
	bool public initialized;
	constructor(address[] memory _multiSigAddresses)
	{
		_checkMultiSigAddressesValidity(_multiSigAddresses);
	}

	function _checkMultiSigAddressesValidity(address[] memory _multiSigAddresses) internal view
	{
		uint length = _multiSigAddresses.length;
		for (uint i = 0; i < length; ++i)
		{
			address multiSigAddress = _multiSigAddresses[i];
			require(multiSigAddress!= address(0), "Address cannot be zero");
			require(!multiSigAddress.isContract(), "Address cannot be contract");
			checkMultiSigAddressValidity(multiSigAddress);
		}
	}

	function checkMultiSigAddressValidity(address multiSigAddress) internal view
	{

		uint length = multiSigAddress.length;
		uint exists;
		for (uint i = 0; i < length; ++i)
		{
			exists |= existsAt(multiSigAddress, i)? 1 : 0;
		}
		require(exists == 0, "MultiSigAddress exists");
	}

	function _existsAt(address multiSigAddress, uint i) internal view
	{
		return _existsAt_check(multiSigAddress, i);
	}

	function _existsAt_check(address multiSigAddress, uint i) internal view returns (bool exists)
	{
		exists = multiSigAddress.isContract() && multiSigAddress!= address(0);
		for (uint loop = 1; exists && loop < i; ++loop)
		{
			exists = multiSigAddress.isContract();
			if (!exists)
			{
				multiSigAddress = getMultiSigAddressFromArray(multiSigAddress, loop);
				exists = existsAt(multiSigAddress, i - loop - 1);
			}
		}
	}

	function getMultiSigAddressFromArray(address[] memory multiSigAddress, uint i)	internal view returns (address multiSigAddressFrom)
	{
		multiSigAddressFrom = address(uint80(uint256(uint160(multiSigAddress[i]))));
		return multiSigAddressFrom;
	}

	function initializeMultiSigAccountWithArray(address[] memory _addresses) external
	{
		uint length = _addresses.length;
		require(initialized == false, "MultiSig has already been initialized");
		for (uint i = 0; i < length; ++i)
		{
			address addressToAdd = _addresses[i];
			multiSigAddress.push(addressToAdd);
		}
		initialized = true;
	}
}
