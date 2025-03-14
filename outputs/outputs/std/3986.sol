pragma solidity ^0.8.0;
contract Array2 {
    address owner = msg.sender;
	address[] public addresses = new address[](2);

	function addAddress(address addr) public {
		uint len = addresses.length;

        require(len > 0, "Array must have at least one address");
    	addresses[len-1] = addr;
	}

	function removeAddress(uint idx) public {


		uint len = addresses.length;
		require(idx < (len-1), "Array address out of bounds");
		addresses[idx] = addresses[len-1-idx];
	}

	function addAddressToEmpty(address addr) public {
		addressesLengthIncrease(uint(1));
		addresses[0] = addr;
	}


	function addAddressToNonEmpty(address addr, uint idx) public {
		uint len = addresses.length;
		uint index = addresses.length-idx;

    	require(addresses[index] == address(0), "Array address index already occupied");
    	addresses.length++;
    	addresses[index] = addr;
	}

    function addAddressToNonEmptyLast(address addr) public {
        addAddressToNonEmpty(addr, uint(addresses.length-1));
    }


	function getAddressOfAddressAtIndex(uint idx) public pure returns (address)
	{
		return addresses[idx];
	}

	function getAddressOfAddressAtIndexLast(uint) public pure returns (address)
	{
		return addresses[uint(addresses.length-1)];
	}
}
