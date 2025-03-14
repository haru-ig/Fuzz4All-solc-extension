pragma solidity ^0.8.0;
contract Conversion {
    function str2int(string memory s) internal pure returns (uint)
    {
        bytes b=abi.encodePacked("\x00", abi.encode(s));
        return bytes(b).length;
    }
    function int2str(uint d)
    public
    pure
    returns (string memory)
    {
        return abi.decode(abi.encodePacked("\x00", d),"(string)");
    }
}
