pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest(uint16 x) public pure {
        uint16 y = 28;
        uint16 z = 10 % y;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest(uint16 x) public pure {
        uint16 y = (uint16(25)/6 + 12)/2;
        uint16 z = 10 % y;
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest(uint16) public {
        uint x = 3;
        uint y = 10;
        if (x = 0) {
            x = 1;
        }
        uint z = 10 % x;
    }
}


pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest(uint16, uint) public pure {
    }
}

pragma solidity ^0.8.0;
contract MutatedExamples14 {
    function mutatedTest() public {
        bool bool1 = false;
        require(bool1, "this should never be reached");
        bool1 = false;
    }
}


pragma solidity ^0.8.0;
contract MutatedExamples14 {
    pragma solidity ^0.8.0;
    event MyEvent();
    function mutatedTest() public {
        bool bool1 = true;
        bool1 = false;
        emit MyEvent();
        emit MyEvent();
    }
}
