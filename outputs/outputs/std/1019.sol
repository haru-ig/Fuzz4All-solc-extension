pragma solidity ^0.8.0;
contract ArrayMut3
{
	address public managerAddress;
	address[] public managerAddressArray1;
	address[] public managerAddressArray2;
	mapping(address => uint) public managerAddressToNumberOfOccurrences;
	mapping(address => address[]) public managerAddressToAddresses;
	uint number1 = 8151388;
	uint number2 = 4632329;
	uint number = number1 ^ number2;
	constructor() {
		managerAddress = msg.sender;
		managerAddressArray1 = new address[](1);
		managerAddressArray1[0] = managerAddress;
		managerAddressToSequenceNumber1 = 0;
		managerAddressToAddresses1[managerAddressToSequenceNumber1] = managerAddressArray1;
		managerAddressArray2 = new address[](2);
		managerAddressArray2[0] = managerAddress;
		managerAddressArray2[1] = managerAddress;
		managerAddressToSequenceNumber2 = 1;
		managerAddressToAddresses2[managerAddressToSequenceNumber2] = managerAddressArray2;
	}

}
pragma solidity ^0.8.0;
contract ArrayMut4
{
	address public managerAddress;
	address[] public managerAddressArray;
	address[] public managerAddressArrayAfter1TransactionFromManagerAddress;
	mapping(address => uint) public managerAddressToMaximumNumberOfOccurrences;
	mapping(address => uint) public managerAddressToNumberOfOccurrences;
	mapping(address => uint[]) public managerAddressToAddresses;
	uint number = 4628994119591295642;
	uint nextAddress = 2181418585;
	uint counter = 0;
	constructor() {
		managerAddress = msg.sender;
		managerAddressArray = new address[](1);
		managerAddressArray[0] = managerAddress;
		managerAddressToMaximumNumberOfOccurrences[managerAddress] = 0;
		managerAddressToMaximumNumberOfOccurrences[managerAddress] = 0;
		managerAddressToMaximumNumberOfOccurrences[managerAddress] = 0;
		managerAddressToAddresses[managerAddressToSequenceNumber] = managerAddressArray1;
		managerAddressArray[0] = managerAddress;
		managerAddressArray[1] = managerAddress;
		managerAddressToAddresses[managerAddressToSequenceNumber] = managerAddressArray2;

	}


function getMaxOccurrencesForAddress(address _a) public view returns(uint256 numberOfOccurrences){
