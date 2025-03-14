pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    function test(uint256[11] memory input) public pure  {
        uint256[11] memory bar;
        bar = input;
    }
}



    function testWithCopy(address[] memory input) public pure {
        address[11] memory bar;
        address[11] memory ret;
        bar[0] = input[2];
        bar[1] = input[3];
        ret = bar;
    }


    function testWithPassByValue(address[] memory input) public pure {
        uint256[11] memory bar;
        uint256[11] memory ret;
        bar[0] = input[2];
        bar[1] = input[3];
        ret = bar;
    }
}

    function testWithCopy(uint256[11] memory input) public pure {
        uint256[11] memory bar;
        uint256[11] memory ret;
        bar[0] = input[2];
        bar[1] = input[3];
        ret = bar;
    }


    function testWithPassByValue(uint256[11] memory input) public pure {
        address[] memory bar;
        address[] memory ret;
        bar[0] = input[2];
        bar[1] = input[3];
        ret = bar;
    }
}
*/
