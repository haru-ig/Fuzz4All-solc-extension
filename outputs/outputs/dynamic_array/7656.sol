pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_4 {
    uint A ;
    mapping(bytes32 => uint) C ;
    function a() public{
        A = 0;
        C[a()] = 0;
        a();
     }
     function b() public{
        a = 0;
        b();
     }
     function c() public {
        bytes32 x;
        bytes32 y;
        x = keccak256(abi.encodePacked(A));
        y = keccak256(abi.encodePacked(_A));
        assert(x == y);
        b();
        c();
        b();
     }
     function _A() internal pure returns(uint){
        return 1;
     }
}
