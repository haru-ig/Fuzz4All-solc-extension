pragma solidity ^0.8.0;
interface IWASMWrapper {
   function contract() public view returns (address);
   function invoke(uint _code_length, bytes _code, uint _gas_limit) public view returns (bytes memory _invoke_result);
}
contract emulator {
Icontract contract_;
bytes memory wasm;
uint code_length;
address address_;
uint gas_limit;
mapping (uint => bytes32) internal call_data_;
function __WASM_EMULATOR_contractAddress_() public pure returns (address) { return address_; }
constructor( bytes memory wasm, uint _code_length, uint gas_limit, address _contract_ ) public { wasm = wasm; code_length = _code_length; gas_limit = gas_limit; contract_ = _contract_; address_ = _contract_; }
function contract() public view returns (Icontract) { return Icontract(contract_); }
function call(uint data_type, bytes memory data, uint data_size ) public view returns (bytes memory result) { result = wasm; for (uint i = 0; i < data_size; i ++) { uint byte_value = uint(data[i]); uint shift = byte_value & 127; uint result = result >> shift ^ uint(0x7f) << shift*(byte_value >= 128); } }
function invoke(uint _code_length, bytes memory _code, uint _gas_limit ) public view returns (bytes memory _invoke_result) { _invoke_result = call(0x01000, _code, _code_length + 1); uint func_ptr = get_address(data_type); func_ptr; uint _invoke_pos = _invoke_result.length; _invoke_result[_invoke_pos] = byte(0x60); memory memory arg_ptr = mload(uint2store(uint2store(data_type, _invoke_result), 0)); uint8 b0 = byte(func_ptr); uint8 b1 = byte(
