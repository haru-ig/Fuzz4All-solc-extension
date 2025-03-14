pragma solidity ^0.8.0;
contract C {
    uint x = 2;
    uint y = 3;
    function change() public {
        x = 4;
        revert();
        y = 5;
        revert();
    }
}
contract Gen_885
{
    function myFunc() public pure {
        assembly {
            let s := 7
            return(0x05)
        }
    }

    function myRevert() public pure {
        assembly {
            let s := 7
            revert(0x05)
        }
    }
    function myRevert2() public pure {
        assembly {
            let s := 7
            revert(0x05)
        }
    }
    function myRevert3() public pure {
        assembly {
            mstore(0x55555555, 0x05, 0x00)
            let s := 7
            revert()
        }
    }
}
contract Gen_886
{
    uint[3] private x;
    uint[3] public y;

    function myFunc() public pure returns (uint[3]) {
        x[0] = 16;
        x[1] = 4096;
        x[2] = 101 << 28;
        y = x;
        return (x, x, y);
    }

    function myRevert() public pure {
        x[0] = 5;
        revert(x[1]);
        x[1] = 2;
        revert(x[0]);
        x[2] = 16;

        return (x, y, y);
    }
    function myRevert2() public pure returns (uint[3]) {
        x[0] = 16;
        x[1] = 4096;
        x[2] = 101 << 28;
        y = x;
        return (x, x, y);
    }

    function myRevert3() public pure {
        x[0] = 5;
        revert(x[1]);
        x[1] = 2;
        revert(x[0]);
        x[2] = 16;
        revert(x[2]);
        x[0] = 3;
        revert(x[0]);
    }

    function myRevert4() public pure {
        uint[3] memory z;
        x[0] = 5;
        revert(x[1]);
        x[1] = 2;
        revert(x[0]);
        x[2] = 16;
        revert(x[2]);

        z = x;
        z[0] = 2;
        revert(z
