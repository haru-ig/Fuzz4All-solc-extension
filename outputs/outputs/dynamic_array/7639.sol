pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_7{
            uint A;
            function a() public{
                B;
                A = 10;
                B = 2;
                a();
            }
            function b() public{
                B = 25;
                a();
            }
        }
function a() {
    assert(false);
}
