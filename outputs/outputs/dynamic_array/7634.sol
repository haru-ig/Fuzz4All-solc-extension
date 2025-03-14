pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_6{
            uint A;
            function a() public{
                A = 1;
                b();
                A = 10;
                a();
            }
            function b() public{
                A = A + 1;
                a();
            }
        }
function a() {
    assert(false);
}
