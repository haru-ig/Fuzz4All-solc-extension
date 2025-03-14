pragma solidity ^0.8.0;
struct NoModifier {}
contract NoModifier {
    MyStruct(uint8 a) {}
    function modMutator(MyStruct memory myStruct) external returns(MyStruct memory) {
        myStruct = Lib.mutator(myStruct);
        return myStruct;
    }
    function nonMutator() pure external {
      Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.mutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.modMutator(Lib.modMutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.mutator(Lib.modMutator(Lib.mutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.mutator(Lib.modMutator(Lib.modMutator(Lib.mutator)) + 0xC01a2055));}
contract AbiCoder {
    function createTypedData(MyStruct memory myStruct) public pure returns (bytes memory) {
        return abi.encode(myStruct);
    }
    function decode(bytes memory calldata calldata, MyStruct memory myStruct) public pure returns (MyStruct memory) {
        (
            myStruct.a
            ) = abi.decode(
                calldata,
                (uint8)
                );
        return myStruct;
    }
}
