pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentToPrevious {
    uint256[] public b;
    uint256[] public a;
    function add(uint256 x, uint256 y) public pure returns(uint256 result) {
        if (x > 0)
            result = x + y;
    }
}

pragma solidity ^0.8.0;
contract Main {
    uint256 endOfProgram;
    function main() public {
        uint256 a[] = [3, 9, 3, 2, 1];
        require(a.length > 4);
        arr = a;
        for (uint256 i = 0; i < arr.length; i++) {
            require(a.length + 1 > arr.length);
            Mutated obj = new Mutated();
            require(add(a[i], 5) == 7);
            require(add(9, 3) == 11);
            require(add(9, 9) == 11);
            uint256[] memory b = a;
            uint256[] memory c = a;
            require(mergeWith(a, b) == 7);
            require(mergeWith(a, c) == 9);
            require(swap(a, 0, 1) == 1);
            require(swap(a, 1, 0) == 0);
            require(swap(a, a.length - 1, 1) == 9);
            require(swap(a, a.length - 1, 1));
            require(arr.length == a.length + 1);
            require(arr.length > endOfProgram);
            endOfProgram = a.length + 1;
        }
        endOfProgram = arr.length + 1;
    }

    function swap(uint256[] storage self, uint256 i1, uint256 i2) private pure returns(uint256) {
        uint256 tmp;
        assembly {
            tmp := mload(add(self, (i1 * 32))))
            mstore(add(self, (i1 * 32)), mload(add(self, (i2 * 32))))
            mstore(add(self, (i2 * 32)), tmp)
        }
    }
    function mergeWith(uint256[] storage a, uint256[] storage b) private pure returns(uint256) {
        if (a.length > b.length) {
            b = swap(a, 0, b.length - 1);
            return add(a[a.length - 1], b.pop());
        }
        b = swap(b, 0, b.length - 1);
        return add(a[0], b.pop());
    }
    function add
