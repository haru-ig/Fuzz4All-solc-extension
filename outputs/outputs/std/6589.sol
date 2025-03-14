pragma solidity ^0.8.0;
uint32 private x;
struct Mutate11 {
  uint32 x;
}
contract Mutate12 {
    uint32 x;
    function test() public {
        Mutate11 memory test = Mutate11(100);
        Mutate12 memory test1 = Mutate12(100);
        Mutate13 memory test2 = Mutate13(100);
        Mutate14 memory test3 = Mutate14(_readStorage());
        test.x = test.x + 5;
        require(test.x == test.x + 5, "Wrong Value");
        test1.x = test1.x +100;
        require(test1.x == test1.x +100, "Wrong Value");
        test2.x = test2.x +1000000;
        require(test2.x == test2.x +1000000, "Wrong Value");
        test3.x = test3.x +1000000000000;
        require(test3.x == test3.x +1000000000000, "Wrong Value");
    }
function _readStorage() internal view returns (uint256) {
    return storage(uint160(address(this)));
}
}
