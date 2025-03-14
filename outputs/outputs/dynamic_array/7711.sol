pragma solidity ^0.8.0;
contract Test18_semanticsSameSemantic_9 {
        bytes1 public a;
        address b;
        uint8 [3] p1;
        function fun (uint8 [3] memory p_) public {
            p1 = p_;
        }

        function testMe() public {
                b = msg.sender;
                if (a >= uint8(0)) {
                    uint x = p1[0];
                }
        }
    }

pragma experimental ABIEncoderV2;
pragma solidity >=0.4.21 <0.9.0;
import "../tests/semantic_nested.sol";
contract Test19_semanticsNested {
   uint public i;
   struct Agg {
        uint z;
    }
   Agg pgg;
   event Log(uint256 x);
   modifier m1() {
       pgg.z += 1;
       i += 1;
       emit Log(i);
       _;
   }
   constructor(uint x) public {
       i = x;
   }

   function f() public {

       Agg memory a = Agg(uint(0x1.01f));
       Agg memory b;
       b.z += a.z;
   }

   function callf() public view {
       Agg storage a = pgg;
       a.z += 1;
       uint x = pgg.z;
   }

   function nestedCallf() public view {
       Agg storage a = pgg;
       a.z += 2;
       uint x = pgg.z;
   }
}



contract SemanticNested {

    bytes1 public a;
    constructor(bytes1 b) public {
        a = b;
    }

    function f() public {
        uint x;
        if (a == uint8(0)) x = 1;
    }
    function f2() public {
        uint x = 2;
        if (a == uint8(0)) x = 0xFF00;
        if (a == uint8(1)) x = 0xFFFF00;
        if (a == uint8(2)) x = 0xFFFF0000
