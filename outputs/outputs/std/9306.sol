pragma solidity ^0.8.0;
contract Basic
{
    address _address;
    function get_address() public view returns (address);
    function set_address(address _address_) public;
}

pragma solidity ^0.8.0;
contract Conversion
{
    function convert_uint(uint256 _uint256) public pure returns (uint8 _uint8) {}
    function convert_bool(bool _bool) public pure returns (bool _bool2) {}
    function convert_string(string memory _string) public pure returns (string execution_result) {}
    function convert_address(address _address_) public pure returns (address execution_result) {}
    function convert_array_uint256(uint256[] memory _uints) public pure returns (uint256[] execution_result) {}
    function convert_array_uint8(uint8[] memory _uints) public pure returns (uint8[] execution_result) {}
    function convert_array_string(string[] memory _strings) public pure returns (string[] execution_result) {}
    function convert_array_address(address[] memory _addresses) public pure returns (address[] execution_result) {}
}
contract LegacyInterface
{
    function version() public pure returns (uint256 _value);
    function new_address(address _from, address _to) public pure returns (address _created);
    function copy_address(address _from, address _to) public pure returns (address _copied);
    function delete_address(address _removed) public pure returns (address _destroyed);
    function modify_address(address _modified) public pure returns (address _used);
    function write_address(address _from, address _to) public pure returns (address _written);
}
