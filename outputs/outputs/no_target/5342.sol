pragma solidity ^0.8.0;
contract MutatedExamples13 {
    function mutatedTest(uint16 x) public pure {
        if (x == 42) x;
        else if (x == 123445) x;
        else if (x == 11) x;
        else x;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples13 {
    function mutatedTest(uint16 x) public pure {
        if (x > 1) x;
        else x;
    }
}

contract MutatedExamples15 {
    function mutatedTest(uint128 x) public pure {
        if (x >= 1) x;
        else x;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples15 {
    function mutatedTest(uint128 x) public pure {
        if (x == 42) x;
        else if (x == -1) x;
        else if (x <= 1111) x;
        else x;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples15 {
    function mutatedTest(uint128 x) public pure {
        if (x > 1) x;
        else x;
    }
}
