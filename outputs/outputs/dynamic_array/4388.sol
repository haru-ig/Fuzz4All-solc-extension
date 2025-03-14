pragma solidity ^0.8.0;
contract Wrapper { function test() public payable returns(uint256) { return 1; } }
contract DynamicArraySizeChanges { function test() public payable returns(uint256) { uint[] memory array = new uint[](2); array[0] = 0; return array.length; } }
contract DynamicArrayOverflows { function test() public payable returns(uint256) { uint[] memory array = new uint[](256); array[255] = 1; return array.length; } }
contract ArrayInitialization { function test() public payable returns(uint256) { uint[] memory array = new uint[](0); return array.length; } }
contract CalldataNestedArrayAccess { function test() public payable returns(uint256) { uint[] memory array = new uint[](2); uint [] calldata nested_array = array; return nested_array.length; } }
contract NestedCalldataArrayAbiReencodingSizeValidation { function test() public payable returns(uint256) { { address payable array_ptr1; address[] memory array_ptr2; } } { address payable array_ptr1; uint [] memory array_ptr2; } return 1; } }
contract Unwind { contract { function test() public payable returns(uint256) { uint _result; address[] memory array = new address[](0); array[0]); _result = array[0]; return blockhash(0x1); } } }
pragma solidity ^0.8.0;
contract Unwind { contract { function test() public payable returns(uint256) { uint _result; address[] memory array = new address[](1); address[] memory inner = new address[](0); array[0] = inner; _result = array[0]; return blockhash(0x1); } } }
pragma solidity ^0.8.0;
contract Unwind { contract { function test() public payable returns(uint256) { uint _result; address[] memory array = new address[](0); address[] memory inner = new address[](1); inner[0] = new address[](0); array[0] = inner; _result = array[0]; return blockhash(0x1); } } }
pragma solidity ^0.8.0;
contract Unwind { contract { function test() public payable returns(uint256
