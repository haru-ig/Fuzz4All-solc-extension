pragma solidity ^0.8.0;
contract Mutate2
{
    uint256[20] memory _storage;
    function mutateX (uint256[20] storage x, uint y, uint z) internal returns (uint)
    {
        x[0] += 1;
        x[0] *= 2;
        x[0] += y;
        x[0] -= z;
        x[0] = x[0] % 256;
        x[0] += x[0] % 256 * 256;
        x[0] = x[0] + x[0] + x[0] + x[0] + x[0] + x[0] + x[0] + 1;
    }

    function runMutate1() public returns (uint)
    {
        bytes memory res1 = abi.encode(uint[20](_storage));
        uint[20] memory res2 = new uint[20](20*_storage, _storage);
        uint res3 = Mutate128(_storage).mutateX(_storage.length-1,_storage.length-1,res1.length);
        return res3;
    }

    function runMutate2() public returns (uint)
    {
        M10(uint[20](_storage, _storage[3])).mutateX(uint256[20](_storage, _storage[3]), _storage.length - 1, _storage.length - 1);
        return 1+runMutate1();
    }

    function runMutate3() public returns (uint)
    {
        M20(uint8[20](_storage, _storage[17],  _storage[3])
              , uint8[20](_storage, _storage[17] + 2, _storage[3] + 2)
              ,uint8[20](_storage, _storage[17] + 3, _storage[3] + 3)
              ,_storage.length - 1
              , _storage.length - 1).mutateX(uint256[20](_storage[20](1), 1, _storage[14]), _storage.length - 1, _storage.length - 1);
        return 1+runMutate1();
    }
}
