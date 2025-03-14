pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent2_1{
            uint A;
            mapping( bytes32 => uint) C;
            function a() public{
                A = 1;
                a();
                a();
            }
            function b() public{
                A = A +C[keccak256(abi.encodePacked(A))];
                a();
                a();
            }
        }

pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent3_1{
            uint A;
            mapping( bytes32 => uint) C;
            function a() public{
                A = 1;
                a();
                C[keccak256(abi.encode("a"))] = C[keccak256(abi.encode("a"))] + A*2;
                a();
                a();
            }
        }

pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent4_1{
            mapping( bytes32 => uint) C;
            function a() public{
                C[keccak256(abi.encode("a"))] = C[keccak256(abi.encode("a"))] + 1;
                uint[] memory Cs;
                for(uint i = 0; i<15; i++){
                    for(uint i = 30; i>i; i--){
                        Cs[i] = 1;
                        for(uint i = i+1; i<30; i++){
                        Cs[i] = 1;
                    }
                }
                for(uint j = 0; j<Cs.length; j++){
                    C[Cs[j]] = C[keccak256(abi.encodePacked(Cs[j]))] + 1;
                }
                C[keccak256(abi.encode("a"))] = C[keccak256(abi.encode("a"))] + 3;
                Cs.length[Cs.length] = 1;
                for(uint j = 0; j<Cs[Cs.length-1]; j++){
                    C[Cs[Cs.length-1]]
