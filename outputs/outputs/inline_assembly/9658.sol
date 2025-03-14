pragma solidity ^0.8.0;
contract SemanticYulContract {
uint public x;
uint public a;
function addBy(uint x) internal {
x += 1000;
}
}

pragma solidity 0.8.0;
 contract InlineAssemblyContract {
     uint public a;
     uint public b;
     uint private c;
     uint constant d;
     uint public e;
     uint constant f = 42;

     constructor() {
       uint x = 32 * c * d;
       a = c + c;
       x += x;
       x += 300 / 23;
       x += 100 / 42.42 * f * f;
       a = x + a;
     }
}

pragma solidity ^0.8.0;
contract SemanticYulContract {
    function foo() internal {
     uint x;
     x += a;
     uint x2 = c + c;
       x += x;
       x += c + (300 / 23) * 300;
       x += e * f;
     }
}

pragma solidity ^0.8.0;
contract SemanticYulContract {
    string name;

    function bar(bool a, int b, bytes32  , uint c, bytes memory data) internal pure {

    }

    function foo() internal {
       bool a = address(this).balance > 50 ether;
       int b = 400;
       name = "test";
   bar(a, b, "arg1",uint(a)*3, stringToBytes());
     }
}
contract SemanticYulContract {
    array memory big;
    function getBigArray(string name) public pure returns
