pragma solidity ^0.8.0;
contract Mutator15 {
    uint internal constant x = 10;



    function testMethod(uint a) public {
       assembly {

            x := a

        }

    }

}


pragma solidity ^0.8.0;
 contract Mutator16 {
    uint internal constant x = 10;


    function testMethod(uint a) public {
       assembly {

            x := a

        }
        require(x == 100);
    }

}
