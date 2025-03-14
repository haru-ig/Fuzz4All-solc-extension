pragma solidity ^0.8.0;
contract Simple {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        bytes memory z;
        assembly {
           x := 2
           y := sub(mload(x), mload(0))



           store(0, x)
        }


        if (x == 2)
        {
            y = mod(sub(mload(x), mload(0)), 2);
        }

        store(0, y)
    }
}
contract Another {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        bytes memory z;
        assembly {
           x := 2
           y := div(add(mload(x), mload(0)), 2)



           store(0, x)
        }


        if (x == 2)
        {
            y = div(mul(add(mload(x), mload(0)), 2), 2));
        }

        store(0, y)
    }
}
contract Intra {
    function testMethod() public {
        bytes memory z;
        assembly {
           x := 2
           y := mul(add(mload(x), mload(0)), 2)
