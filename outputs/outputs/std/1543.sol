pragma solidity ^0.8.0;
contract MutatedMutatedMutatedMutated {
    uint256 public test;
    function myInit(uint256 a) public {
        test = test * a;
    }
}

pragma solidity ^0.8.0;
contract MutatedMutatedMutatedMutated {
    uint256 public test;
    function myInit2(uint256 a) public {
        test %= 2;
    }
}
pragma solidity ^0.8.0;
contract MutatedMutatedMutatedMutated {
    uint256 public test;
    function myInit(uint256 a) public {
        test %= 2;
    }
}
