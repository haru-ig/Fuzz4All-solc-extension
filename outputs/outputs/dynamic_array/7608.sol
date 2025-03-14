pragma solidity ^0.8.0;
contract Test15 {
    uint256 A;

    function b() public {
        A = 6;
    }

    function c() public {
        A = 2;
        A = 5;
        A = 8;
    }

    function d() public {
        A = 0;
        a();
        if (A!= 5)
            revert();
    }
    function a() public {
        uint256 s;
        contract Test14_C {
            function a() internal pure returns (uint256){
                return 0;
            }
        }
        s = Test14_C.a();
        A = 5;




        s--;
        if (s!= 0)
            revert();
    }
}
