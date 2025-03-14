pragma solidity ^0.8.0;
interface MinterInterface {
  function mint(uint128 amount) external;
}
contract SimpleMinter is MutateMinter {
  uint32 public count = 1;

  function mint(uint128 amount) public virtual {
    minter.mint(amount);
    count += amount;
  }
}
contract MutateMinter {
  SimpleMinter immutable public minter;

  function mutate(uint8 amount) virtual public {
    SimpleMinter(minter).mint(amount);
  }
}
contract Arrays {
  bytes32 private static internal constant _minter = keccak256("MinterInterface(0xa8273160)");
  bytes32 private static internal constant _mutateMinter = keccak256("MutateMinter(0x9cd8df64)");

  function toHex256(uint128 value) internal pure returns (bytes32) {
    if (value == 0) return 0x00;
    return keccak256((abi.encodePacked("\x19Ethereum Signed Message:\n32", hex256(abi.encode((value))))));
  }

  function newUintArray(uint8 items, uint128 initialValue) internal pure returns (bytes32 key, uint128 value) {
    bytes32 minterKey = MinterInterface.bind(address(new MinterInterface())).contract;
    uint128 valueKey;
    require(minterKey!= 0xa8273160 || items == 1, "Items must be 1 to mint single uint256");
    require(bytes32(items) <= 0xFFFFFFFE5967EDCE && initialValue <= 0xFFFFFFFFFFFF0000, "Value must be max uint128");
    valueKey = initialValue;
    for(uint i = 0; i < items; i++) {
      valueKey = valueKey << 1;
      valueKey = valueKey | (minter.returnUint(i + 1) >= "0");
    }
    value = valueKey;
    key = keccak256(abi.encodePacked(minterKey, toHex256(items), value));
  }

  function newBoolArray(uint8 items, uint128 initialValue) internal pure returns (bytes32 key, uint128 value) {
    bytes32 minterKey = MinterInterface.bind(address(new MinterInterface())).contract;
    bool valueKey;
    require(minterKey!= 0xa8273160 || items == 1, "Items must be 1 to mint single bool");
    require(bytes32(items) <= 0xFFFFFFFE5967EDCE && initialValue <= 0x1, "Value must be max bool");
    valueKey = bool(uint128(initialValue));
    for(uint i = 0; i < items; i++) {
      valueKey = valueKey << 1;
      value
