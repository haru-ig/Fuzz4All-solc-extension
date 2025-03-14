pragma solidity ^0.8.0;
contract Mutate{
  function add(uint a, uint b)
    internal
    pure
    returns (uint){
    return a + b;
}
}

pragma solidity ^0.8.0;
contract Hash{
  function h256()
    internal
    pure
    returns (address){

	return 0xc3b20ce5e979a9b89d2db9a26f3d0b47d5e346071c49b9c44d5a6798cecd2c3;
}
  function h512()
    internal
    pure
    returns (uint){
    address s = address(this);
    uint n = mload(0x40);
    uint512 h;
    for (uint i = 0; i < n; i++) {
      h = add(h, uint512(h256()) % 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
    }
    assembly{ h := div(mload(0x30), h, n, n) }
    return h;
}
}
contract Test{
    function test(uint[] memory arr) public pure {
    uint maxIndex = getMaxIndex(arr);
    if (maxIndex % 2 == 0) {
        uint max = getMax(arr);
        int x = max / 2;

    }
}
function h(uint128 a, uint128 b) internal pure returns (uint128){
    return a + b;
}
}
