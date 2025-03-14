pragma solidity ^0.8.0;
interface IConvert {
    function parseUint(string memory) public view returns (uint);
    function parseInt(string memory) public view returns (uint);
    function toString(uint) public view returns (string memory);
}

pragma solidity ^0.8.0;
interface IMath
{
    function sqrt(uint) external;
    function modularExponentiation(uint, uint) public view returns (uint);
    function pow(uint, uint) public view;
}


contract ArrayMutator {
	function main() public {
		uint[] memory array = new uint[](5);
		IArray a = IArray(address(array));
		a.append(1);
		a.remove(1);
		a.set(1, 4);
		a.get(1);
		array[0];
		a.sort(0);

		array.push(2);
		array.pop();
		for(uint i=1; i<2; i++) {
			a.set(2 + i, 100000);
			a.set(2 + i, 10000);
		}

		uint l = a.getLength();
	}
}
