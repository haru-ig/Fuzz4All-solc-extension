pragma solidity ^0.8.0;
contract oldStorageMut{
    uint[1] a = [0];
}

pragma solidity ^0.8.0;
struct S { uint[5] c[6]; }
contract oldStorageMut{
    S storage s = new S[](0) ;
    S[2] storage t = new S[](0) ;
    address s1 = msg.sender;
}
contract oldStorageMut{
    S[2] storage t = new S[2](0) ;
    address s1 = msg.sender;
}
contract oldStorageMut{
    S[3] storage t = new S[3](0) ;
    address s1 = msg.sender;
}
contract oldStorageMut{
    uint constant _max_depth = 1;
    uint[5][1] storage s = new uint[5][1][_max_depth](0);
}
contract newStorage{
    uint[] foo = [8,9,9,6,5];
}
struct S { uint[] arr; }
contract newStorage{
    S storage f = new S();
}
contract newStorage{
    uint[4][4][4][1] storage f = new uint[4][4][4][1][_max_depth](0);
}
pragma solidity ^0.8.0;
struct C {
    uint[1][5] mem0;
    uint[1][5][6] mem1;
}
struct C {
    uint[30] mem0;
    uint[90] mem1;
}
contract oldC {
    constructor(uint a0, uint[3][5] memory memory0)
    {

    }
    function f(uint[3][5][6] memory memory1)
    {

    }
}
contract oldC {
    function f(uint[3][5] memory memory0)
    {

    }
    function f(uint[30][90] memory memory0)
    {

    }
}
contract oldC {
    function f(uint[3:4][4] memory memory0)
    {

    }
    function f(uint[3:4] memory memory0)
    {

    }
}
contract oldC {
    function f(uint[1][6] memory memory0)
    {

    }
}
contract oldC {
    function f(uint[1][5][9] memory memory0)  /* c.f.
