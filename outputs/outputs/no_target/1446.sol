pragma solidity ^0.8.0;
contract Semantic0032 {

   enum Test {
        0,
        1,
        2,
        3
   }

   function notMutant() public pure returns(Test) {
       (Test x) = Test.valueOf(1);
       x = Test.valueOf(0);
       x = Test.valueOf(2);
       return x;
    }
}
pragma solidity 0.8.0;
contract Semantic0033 {
    contract Child {
        function parent() public pure { return 1; }
        function child() public pure { return parent(); }
    }

    function notMutant() public pure {
        if (Child(1).child() == 1) {
            return;
        }
        else {
            return;
        }
    }
}
