pragma solidity ^0.8.0;
contract Test1 is Updated {
    event VarUpdate(string text1, uint256 update_var);
    string memory str;
    uint256 update_var;
    function f(string memory _str, uint256 _update_var) public {
        (str, update_var) = (_str, _update_var + 1);
        emit VarUpdate(str, update_var);
    }
}
mapping(bytes32 => bytes32) public storage;
struct BytesWithHash {
    bytes32 hash;

    function BytesWithHash(bytes _hash)
        public {
        hash = keccak256(abi.encodePacked(_hash));
    }
}
function f(bytes memory b) public view returns(BytesWithHash storage, bool) {

    (BytesWithHash storage) storageRef = address(this)
      .solStorageRef()
      .toBytesWithHashRef(0, bytes32(storage.length));
    storageRef.hash = keccak256(abi.encodePacked(b, bytes32(UPDATE_VALUE_ADDEND)));
    return(storageRef, true);
}
