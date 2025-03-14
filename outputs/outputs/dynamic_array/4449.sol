pragma solidity ^0.8.0;
contract Mutated3 { function test2() public returns (bool[][] memory) {
} }
/*
The above code can be improved to be similar to the following:
pragma solidity ^0.8.0;
contract Mutated { function test(bool[][] memory v) public returns (bool) {
} }
The bug of the first instance of mutated code, i.e. nested dynamic arrays, can be explained as follows:
The mutant program test2() takes multiple argument blocks as input and then returns True or False, and the mutation changes the block sizes of two arrays, test[1]["3"]=2, test[2][-1]=2. Thus, it is possible that the compiler can assign an array[1]["3"] to a different block size while it shouldn't. The second issue occurs because test[2][-1] is overwritten by -1, when it should really be overwritten by 2. The third issue occurrs because the array size is larger than the length of the block with the same index. This will be fixed in the next Solidity update.
