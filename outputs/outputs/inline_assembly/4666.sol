pragma solidity ^0.8.0;
contract mutator84 { uint x = 2;
    uint z = 1;
    constructor() {
    x=20; } function updateZ() returns (uint) {
    z = 2 * z;
    return z; } }

pragma solidity ^0.8.0;
contract mutator85 { uint x = 2;
    uint z = 1;
    constructor() {
    x = 20; } function updateZ() returns (uint) {
    z = 2 * z;
    z = z + x;
    return z; } }


pragma solidity ^0.8.0;
contract mutator86 {
    uint z = 2;
    bytes32 hash_z;
    constructor() {
    hash_z += keccak256(abi.encodePacked("updateZ() returns (uint) :\n\treturn z;"));
    hash_z += keccak256(abi.encodePacked("z = 2 * z;"));
    z = 2 * z;
    z = z + x;
    } function mutatedCodeToOutputCorrectResults() public view returns(uint) {
    return z; } }

    function main ( )
    public
    pure  {
        bytes32 hash_z = keccak256(abi.encodePacked("updateZ() returns (uint) :\n\treturn z;"));
        hash_z += keccak256(abi.encodePacked("z = 2 * z;"));
    z = 2 * z;
    z = z + x;
    assert( mutatedCodeToOutputCorrectResults() == mutatedCodeToOutputCorrectResults() );  }



/*******************

You can copy/past the following code in to edit the above smart contract.

pragma solidity ^0.8.0;
contract mutator85 { uint x = 2;
    uint z = 1;
    constructor() {
    x=20; } function updateZ() returns (uint) {
    z = 2 * z;
    z = z + x;
    return z;
    } }
    function main ()
    public
    pure
    returns(uint)
    {
        bytes32 hash_z = keccak256(abi.encodePacked("updateZ() returns (uint) :\n\treturn z;"));
        hash_z += keccak256(abi.encodePacked("z = 2 * z;"));
        z = 2 * z;
        z = z + x;
        assert( mut
