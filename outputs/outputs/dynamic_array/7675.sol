pragma solidity ^0.8.0;
contract Test17_semanticsSame_3 {
           uint A=10;
           uint B=6;
           mapping(bytes32 => uint[100]) C;
           uint D=10;
        function a(mapping memory x, uint a, uint b, uint c, uint d) public{
            A=a+C[bytes32(keccak256(abi.encodePacked(C[bytes32(keccak256(abi.encodePacked(a, b, c, d)) ])))]];
            B=b+A;
        }
        function b() public{
            A=5;
            B=B+B*B;
        }
        function c() public {
            A=5;
            B=B+B*B;
            B=B+B*B;
            B=B+B*B;
            }
    }

pragma solidity ^0.8.0;
contract Test18_semanticsSame_3{
      uint A=10;
      uint B=6;
      mapping(bytes32 => uint[100]) C;
      uint D=10;
      function a(mapping memory x, uint a, uint b, uint c, uint d) public{
          A=a;
          B=B+B*B;
          B=B+B*B;
          B=B+B*B;
      }
      function b() public{
          A=40;
          B=B+B;
      }
      function c() public {
          A=40;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
          B=B+B;
           B=B+B;
           B=B+B;
           B=B+B;
         }
    }
