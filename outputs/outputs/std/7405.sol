pragma solidity ^0.8.0;
contract Array2 is MutatedAccount {


	address firstElemAddress();

	uint32 findMin();

	uint32 findMax();

	uint32 findSum() view returns(uint32);

	address[] public array;


	uint public length;

	function intToString(uint num) public pure returns (string memory str) {
		bytes memory digits = uintToBytes(num);
		require(digits.length <= 32, "StrToUInt");
		str = new string(digits);
	}
	function intToAddress(uint num) public pure returns (address addr) {
		bytes memory digits = uintToBytes(num);
		require(digits.length <= 160, "AddresToInt");
		addr = bytesToAddress(digits);
	}

	function stringToInt(string memory str) public pure returns (uint res) {
		require(str.length <= 128, "StrToInt");
		bytes memory strBytes = bytes(str);
		for(uint i = 0; i < strBytes.length; i++) {
			res += (uint(strBytes[i]) & 0xff) * (2**(8*(11 - i))));
		}
	}
    function uintToBytes(uint32 num) private pure returns (bytes memory x) {
        assembly {
            x := mload(add(400, 8*(n + 1))))
        }
    }
    function bytesToAddress(bytes memory x) private pure returns (address xAddr) {
        xAddr = address(uint160(0));
        assembly {
            xAddr := mload(add(0x8, add(x, 0x20)))
        }
    }
}
