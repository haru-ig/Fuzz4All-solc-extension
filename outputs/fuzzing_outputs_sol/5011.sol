pragma solidity ^0.8.0;
contract Mutated {
    function mutated() public {
        fallback();
    }
}

pragma solidity ^0.8.0;
contract Receiving {
    function receive() public pure {
        fallback();
    }
}


pragma solidity ^0.8.10;

import "@openzeppelin/contracts/utils/math/Math.sol";


contract SolidityMathTest {

    uint internal testAmount = 72181337;
    uint internal testAmount2 = 7218133;

    using Math for uint;


    function testMutated() public view returns( uint ) {
        mutatedMathTest();
    }
    function mutatedMathTest() public pure returns( uint ){
        require(testAmount!= (testAmount.mul(2)) && mathTest(testAmount)!= (testAmount2), "Wrong returned number for one and two");
        return testAmount.mul(2).add(testAmount2.mul(3).mul(4));
    }
    function mathTest( uint x) public pure returns (uint) {
        uint ret = uint(x);
        uint max = 0;
        for(uint i = 0; i<10; i++){
            max = ret.mul(10).add(max);
        }
        return max;
    }

}
