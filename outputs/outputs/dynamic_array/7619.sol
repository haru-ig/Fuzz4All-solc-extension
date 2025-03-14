pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_13{
    uint A[];
    uint B;
    uint C;
    uint index;
    function a() public{
        A[index] += 1;
    }
    function b() public {
        B += C;
    }
    constructor () {
        for(; index < A.length; index += 1){
            B[index / 2 + 1] = A[index];
        }
        C = 0;
    }
}
pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_14{
    struct Node {
        address data;
        uint height;
        uint nonce;
        bool isLeftSibling;
    }
    Node[] A;
    function a() public{
        A[0].nonce += 1;
        if(A[5].isLeftSibling)
            revert();
    }
    function b() public {
        A.length -= 1;
    }
    constructor ()  {
    }
}
pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_15{
    uint A;
    uint B;
    uint H;
    uint LH;
    uint HL;
    uint HL;
    address HLAddr;
    constructor () public{
        A = 0;
        B = 0;
        LH = 0;
        address HLAddr;
        H = 0;
        HL = 0;
        HL = 0;
        HLAddr = 0;
    }
    function setLeftSibling(address LHAddr_){
        LHAddr = LHAddr_;
    }
    function update(){
        HLAddr = LHAddr;
        A = 0;
        H = 0;
        HL = 0;
        HL = 0;
    }
}
pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_16{
    uint A;
    uint B;
    uint C;
    uint D;
    uint E;
    uint[] A_;
    uint[] B_;
    uint[] C_;
    uint[] D_;
    uint[] E_;
    uint[] Ah_;
    uint[] Ae_;
    uint[] Ab_;
    uint[] Be;
    uint[] Dh_;
    uint[] Cd;
    uint[] Ed;
    uint[] Dc;
    uint[] Ai;
    uint[] Bh_;
    uint[] Dbh_;
    uint[] Ei;
    uint
