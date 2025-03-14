pragma solidity ^0.8.0;
contract SemanticMutation6{
    function test1()
        public
        pure
        returns (uint x, bool b)
    {
        b = (uint8(1) << (24)) == 0;
        x = (uint8)255;
        return (x, b);
    }
}
contract SemanticMutation7{
    function test2()
        public
        pure
        returns (bytes memory b)
    {
            string memory s = '';
            bytes1 b;
            b += s;
            s += 'x';
            b[0] = -141;
            b += s;
        }
}
contract SemanticMutation8 {
    function test3()

    public
        pure
        returns (bytes s1)
    {
        s1 += '\x20';
        s1[0] = 0x12;
    }
}
contract SemanticMutation9 {
    function test4()
        public
        pure
        returns (bytes memory b)
    {
        bytes s1 ='solidity';
        bytes memory c = '';
        bytes memory cs = c.length > c.length? c + s1 : s1 + c;
        b = cs;
    }
}
contract SemanticMutation10 {
    uint[] mem16;
    uint[] mem17;
    uint[] mem18;

    function test() public returns (uint mem0, uint x0, uint x1) {
        uint x;
        uint[] memory mem2 = [0];
        x = mem2[0];
        x0 = x;
        x = mem2[1];
        x1 = x;
        x = mem2[1];
        mem0 = x;
    }

    function test0() public returns (uint x) {
        uint y;
        uint[] memory mem3 = [0];
        mem16 = mem3;
        y = mem3[0];
        y = mem3[0];
        if (x == 255)
            return;
        y = mem3[0];
        mem17 = mem3;
        mem18 = mem3;
        y = mem3[1
