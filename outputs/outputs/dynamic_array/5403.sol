pragma solidity ^0.8.0;
contract Test17 {
    function mutated2(uint x) public {
        bool z = ( ( mutated2(x) ) );
    }
}
contract A {
    uint n;
    uint p;

    function mutated3(uint x) public
    {
        n;
        p;

        n;
        n;
        n = ( n );
        p;
    }
}
