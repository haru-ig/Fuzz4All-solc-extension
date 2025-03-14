pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public stored = [1, 2, 3, 4];
    bytes55[] public store;
    function MutateData() public {
        data = 16;
        stored[16] = 8;
        stored = [
         "0xe178a5e800000000000000000000000ccccccccceee7",
         "0x8ca8c3e8000000000000000000000000ccccccccee0000",
         "0xb1b6c5e800000000000000000000000ccccccccceee5555"
        ];
        stored[554] = 5;
        require(stored[16] == 8, "FAILS");
        stored[16] += 10;
        require(stored[16] == 21, "FAILS2");
        stored = [
         "0x77756e65202020ff7265676973746572202020ff62696e6172626f74",
         "0xc0c841200061200020526570657261746564206973206e6f74206e6f742062696e",
         "0xc2c5974000208ce07001002280838f3180842ae11e400222904f02ab102ab102"
        ];
        stored = [
         "0x77756e65202020ff7265676973746572202020ff62696e6172626
