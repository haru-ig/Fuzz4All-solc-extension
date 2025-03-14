pragma solidity ^0.8.0;
contract ArraysBase256 {
    uint public immutable counter;
    function base256() public pure {
        assert(counter == 0);
    }
}
contract ArraysMod5 {
    uint public immutable counter;
    function mod5() public pure {
        assert(counter%5 == 0);
    }
}
contract ArraysMutations {
    uint public immutable counter;
    uint public immutable value;
    uint public immutable initial;
    function mutated1() public {
        if (counter++ >=5){
            revert(type(Error).name() + "2");
        }
    }
    function mutated2() public {
        if (0 == 5){
            revert(type(Data).name() + "3");
        }
    }
    function isEqualInitial(uint a) public view returns (bool) {
        return value == a;
    }
    function arrayInitial() public view returns (uint[]) {
        uint[] memory res = new uint[](0);
        res.push(initial);
        unchecked {
            uint[] memory tmp = new uint[](5);
            tmp[4] = 0;
            res = tmp;
        }
        return res;
    }
    function arrayMutated() public {
        uint[] memory res = new uint[](counter);
        for (uint i = 0; i < counter; i += 2) {
            res[i] = value + i;
            res[i + 1] = counter - i + 1;
        }
        unchecked {
            uint[] memory tmp = new uint[](5);
            tmp[3] = 4;
            res = tmp;
        }
    }
    function arrayMutatedOne2() public {
        uint[] memory res = new uint[](counter);
        for (uint i = 0; i < counter; i += 2) {
            res[i + 1] = counter - i + 1 + 1;
        }
    }
}
