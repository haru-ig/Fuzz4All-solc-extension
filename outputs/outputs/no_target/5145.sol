pragma solidity ^0.8.0;
contract SimpleExample {
    function foo() public {

        uint256 counter = 0x0;
        counter = counter + 1;
        uint256 result = counter + 1;
        while (true) {
            result = result + 1;
            if (result > 2 **128 + 2) {
                counter = 0x0;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract SimpleExample_private_ modifier {}
contract SimpleExample_public_ modifier {}
contract SimpleExample_private_constructor_ modifier {}
contract SimpleExample_public_constructor_ modifier {}
contract SimpleExample_private_constructor {}
contract SimpleExample_public {}
contract SimpleExample_public_constructor {}
contract SimpleExample_public_modifier {}
