pragma solidity ^0.8.0;

contract Semantic0008 {
    function assert(bool test) internal view {
        if (!test) revert("This assertion should fail");
    }
    function assert2(uint8 v0, uint8 v1, uint8 v2) public view {
        if (v0!= 0 && v1!= 0 && v2!= 0) revert("This assertion should fail");
    }
}

pragma solidity ^0.8.0;
 contract Semantic0009 {
    class SafeInteger {
        uint96 _value;
        function set(uint96 x) public {
            _value = x;
        }
    }
    function test() public  {
        uint8 low = 0;
        uint8 high = 100;
        for(var i = uint8(0); i < high; i++){
            uint8 mod = i % (high - low);
            uint8 expectedSum = (i + low) % (high - low);
            if(expectedSum > 100) expectedSum -= 200;
            if (expectedSum!== mod) revert("SafeInteger does not hold for this value");
        }
    }
}
/* Please create a short
