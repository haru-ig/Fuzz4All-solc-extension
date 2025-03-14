pragma solidity ^0.8.0;
contract PristineFallbackMultiAddress
{
    address public fallbackAddress;
    constructor(address _fallbackAddress, address _key) public {
        fallbackAddress = _fallbackAddress;
        key = _key;
    }
    function mutate() public {
        fallbackAddress = 0x79a1f95341f035B6d19AB2091110a968E30A47dD;
        key[0] = 'f';
    }
}
