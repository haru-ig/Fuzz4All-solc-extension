pragma solidity ^0.8.0;
contract Test70 {
    function t() public {
        contract Test71 test = new Test71();
        Test71[] memory a = new Test71[](1);
        test.f(a);
    }
    function f(Test71[] memory a) public {
        a[0].x = address(1);
    }
}
