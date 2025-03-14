pragma solidity ^0.8.0;
library NewArray {
    struct Int {
        uint length;
        uint[10] array;
        constructor(uint length) {
            this.length = length;
            for (uint i = 0; i < length; i++) {
                this.array[i] = i;
            }
        }
        function get(uint i) view public returns (uint) {
            return this.array[i];
        }
        function get(uint i) public {
            this.array[i] = i * 2;
        }
    }
}
pragma solidity ^0.8.0;
interface NewMutatedInterface {
    NewArray.Int[] public x;
}
