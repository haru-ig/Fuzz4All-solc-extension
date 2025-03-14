pragma solidity ^0.8.0;
contract Test3 {
    struct S {
        string foo;
    }

    uint public x=5;

    function f()
        public view returns (string memory res)
    {
    res = "f";
    uint i;
    for (i = 1; i < 5; ++i ) {
        res += i.toString();
    }
   }
}
