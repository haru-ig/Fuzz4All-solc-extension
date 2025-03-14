pragma solidity ^0.8.0;
contract SemanticallyMatchingMutantContract2 is
    SemanticsMismatchXulMutantContract2
{
    bool fFalse;
    constructor () {
    }
    function g(bytes32 y, bytes32 x, bytes32 z) public {
        y == z;
        x == z;
        fFalse;
    }
    function f(bytes32 y, bytes32 z) public {
        uint r;
        uint b;
        uint a;
        uint c;
        uint e;

        assembly {
            r := and(and(x, b), x)





        }
    }
    function g1(bytes32 _y, bytes32 _x, bytes32 _z) public {
        uint r;
        uint b;
        uint a;
        uint c;
        uint e;

        assembly {
            r := and(and(x, b), x)





        }
    }
    function f1(bytes32 _y, bytes32 _z) public {
        uint r;
        uint b;
        uint a;
        uint c;
        uint e;

        assembly {
            r := and(and(x, b), x)





        }
    }
}
