pragma solidity ^0.8.0;
contract G {
    uint private a;
    uint private b;
    uint128 private c;
    constructor(uint _value1, uint _value2, uint128 _value3) public {
        a = _value1;
        b = _value2;
        c = _value3 - 16;
    }
    function get(uint128[] memory d) public view {
        b = a;
        d.push(a);
        b = c;
        b = a + 16;
        }
    }

pragma solidity ^0.8.0;
contract Test {
    uint private a;
    uint public b;
    uint private c;
    function Test() public {
        a = 1;
        b = 0;
        c = 1;
        }

    function test(uint[] memory c) public {
        a = 1;
        b = uint160(-1);
        c.push(uint128(1));
    }

}







module-returns
0

*/
