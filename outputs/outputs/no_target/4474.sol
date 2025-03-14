pragma solidity ^0.8.0;
contract C {
    uint256 a;
    function myFunction() public pure {
        a = 464626;
    }
}
contract OddOdd {
    A a;
    B b;

    function oddEvenNumber() public pure {
        if (a.myFunction()!= 464626) print("ERROR");
        if (b.myFunction()!= 97) print("ERROR");
    }
}
contract B {
    uint256 a;
    function myFunction() public pure {
        a = 924657;
    }
}
