pragma solidity ^0.8.0;
contract Mutate
{
    uint[63] public _bytes;
    uint _bytesIndex;
    function getByte(uint256 x) public returns(uint256)
    {
        return _bytes[x%32];
    }
    function getByteByAddress(uint x) public returns(uint256)
    {
        return uint(uint64(keccak256(bytes(address(this), x%2^31), 2))));
    }
    function readArrayBytes(uint256 x) public view returns(uint256) {
        return getByte(x);
    }
    function readArrayBytesByAddress(uint x) public view returns(uint256) {
        return getByteByAddress(x);
    }
    function setBytesToRandom(uint n) public returns(uint256) {
        for (uint i = 0; i < 32; i++) {
            for (uint c = 0; c < n; c++) {
                _bytes[i * n + c] = uint(uint8(255 * 2*rand() / UINT64MAX));
            }
        }
    }
}
