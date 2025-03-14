pragma solidity ^0.8.0;
struct AddressAndUint {address addr; uint num;}
struct LineAndPointer {AddressAndUint lineAndPointer; uint counter;}
struct PointAndArray {uint storedAddress; uint[] storedAddresses}
function simpleRecursivelyAdd(SemanticEquivalentSolidityPointers memory SELF) public {
  mutatedArrayofPoints = new Line[][][](SELF.SIMPLEREPRICEDPOINTSTYPES){
    Line[] memory lines;
  };
  mutatedArrayofLines = new Line[][][](SELF.SIMPLEREPRICEDLINEDATATYPES){
    Line[] memory lines;
  };
  SELF.SIMPLERePRICEDLINES.push(new AddressAndUint{addr: address(new LineAndPointer(address(5), 1), 1)});
  SELF.SIMPLEREPRICEDADDRESSES.push(SELF.SIMPLEREPRICEDLINES[0].addr);
  mutatedAddress(SELF);
}
function mutatedAddress(SemanticEquivalentSolidityPointers memory SELF) public {
  for (uint i = 0; i < 3; i++) {
    uint[] storage _storage;
    AddressAndUint storage _address;
    mutatedAddress2(_data:mutatedAddress3(SELF), storage _storage, AddressAndUint storage _address);
    SELF.SIMPLEREPRICEDADDRESSES[_address.addr.add(i-2)].num = _address.num;
    assert(_storage.last() == i);
    SELF.SIMPLEREPRICEDADDRESSES[0].num = i;
  }
}
function mutatedAddress2(uint256 _data, uint[1][] storage _storage, AddressAndUint storage _address) private pure {
  uint[] memory addressesToMutate;
  for (uint i = 0; i < 3; i++) {
    addressesToMutate.push(_data);
    for (uint j = 0; j < 3; j) {
      _storage.push(j);
    }
  }
  for (uint i = 0; i < 3; i++) {
    _storage.push(i + 1);
    _address.addr = _data;
    _address.num = i;
    assert(addressesToMutate.length!= _storage.length);
    for (uint
