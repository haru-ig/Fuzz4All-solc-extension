pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure {
       d.x = 3;
    }
}

pragma solidity ^0.8.0;
contract MemoryArray {
    struct Data {
        uint x;
    }
    function fTest(Data[] storage d) public pure {
        d[0].x = 3;
        d[1].x = 3;
        d[2].x = 3;
        d[3].x = 1;
    }
}
pragma solidity ^0.8.0;
contract MemoryArrayWithOverflow {
    struct Data {
        uint x;
    }
    function fTest(Data[] storage d) public pure {
        d[4] = Data(3);
        d[5] = Data(3);
        d[6] = Data(3);
        d[7] = Data(1);
    }
}
