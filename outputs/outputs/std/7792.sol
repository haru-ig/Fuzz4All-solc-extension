pragma solidity ^0.8.0;
contract ContractTest {
    function test_01_subroutine() public {
        Subroutine obj = new Subroutine();
        (uint256 a, uint256 f) = (obj, obj.f);
    }
    function test_02_subroutine() public {
        (uint256 a, uint256 f) = (Subroutine(0), Subroutine.f);
    }
    function test_03_subroutine() public {
        (uint256 a, uint256 f) = (Subroutine(obj), Subroutine(obj.f));
    }
    function test_04_subroutine() public {
        (uint256 a, uint256 f) = (msg.sender, msg.sender.f);
    }
    function test_05_subroutine() public {
        (uint256 a, uint256 f) = (msg.sender, msg.sender.b);
    }
}
