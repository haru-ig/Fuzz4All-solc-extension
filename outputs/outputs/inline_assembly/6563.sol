pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample82 {
    uint256 public constant A = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    uint256 public constant B = ~A;
    uint256 public constant C = C + A;
    uint256 public constant D = D + B;
    uint256 public constant E = E + C;

    function doSomething() public {
        A = A + 1;
        B = ~A;
        C = C + A;
        D = D + B;
        E = E + C;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MultipleMutatedContactsExample83 {
    uint256 public constant A = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    uint256 public constant B = ~A;
    uint256 public constant C = C + A;
    uint256 public constant D = D + B;
    uint256 public constant E = E + C;
    uint256 a = 0;
    uint256 b = ~a;
    function mutatedSomething() public {
        a = a + 1;
        b = ~a;
    }
}

contract MixedContactsExample83 {
    uint256 public constant A = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    uint256 public constant B = ~A;
    uint256 public constant C = C + A;
    uint256 public constant D = D + B;
    uint256 public constant E = E + C;
    uint256 a = 0;
    uint256 b = ~a;
    function mutatedSomething() public {
        a = a + 1;
        b = ~a;
        C = E;
        D = B | B & C;
        E = C + B;
    }
}
