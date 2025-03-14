pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint A;
            mapping(bytes32 => uint) C;
            mapping(bytes32 => uint[]) D;
            function a() public{
                A = C[keccak256(abi.encodePacked(A))];
                B[D[keccak256(abi.encodePacked(A))][62]]+=62;
                b();
            }
            function b() public{
                C[keccak256(abi.encodePacked(A))]=32;
                d();
                a();
                a();
            }
            function c() public{
                D[keccak256(abi.encodePacked(A))].push(80);
            }

            function d() public{
                B[D[keccak256(abi.encodePacked(A))][62]]+=42;
            }
    }

pragma solidity ^0.8.0;

contract Test16_semanticallyEquivlid_3{
    uint[] a;
    function b() public{
        uint x=b();
        x+();
        c();
        d();
        e();
        f();
        g();
        h();
        i();
    }
    function e() public{
        a.push(f());
    }
}
