pragma solidity ^0.8.0;
contract Mutate6
{
    bytes32[4] bytes4Array;
    address _address1;
    address _address2;
    uint256 _uint256_0;
    uint256[6] uint256Array;
    uint256 _uint256_1;
    uint256 _uint256_2;
    uint256[3] uint256Array3;
    bytes memory bytes4String;
    function testMutate4() public
    {
        bytes4Array = [bytes4('a'), bytes4('b'), bytes4('c'), bytes4('d')];
        bytes4String = keccak256(abi.encodePacked('a', 'b', 'c'));
        _address1 = 0x0;
        _address1 = _address1;
        uint256 _Uint256_0 = uint256(uint80(_address1));
        uint256 _uint256_55 = _uint256_0 + uint256(32768);
        uint256 _uint256_28 = _uint256_0 > uint256(uint(uint128(1e18) - 100, 20));
        _address1.transfer(_address2, 0);
        _Uint256_0 = _uint256_0;
        assembly {
        let _addr := mload(0x40)
        mstore(0x40, 0x2000000000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000)
        mstore(0x200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
