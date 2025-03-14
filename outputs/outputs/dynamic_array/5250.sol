pragma solidity ^0.8.0;
contract Test39 {
    struct S {
        uint i;
        int[] memory j;
    }
    function g() public pure returns (int[] memory) {
        S s = new S();
        s.j.push_back(0x02);
        return s.j;
    }
}



contract Test39 {
    struct S {
        uint i;
        bytes32[] memory j;
    }
    function g() public pure returns (int[] memory) {
        S s = new S();
        s.j.push_back(uintToBytes32(2));
        return intToBytes(s.j);
    }
}
contract Test26 {
    modifier public check()
    {

        require(msg.value > 1, "Test26: too-small");
        _;
    }
}
