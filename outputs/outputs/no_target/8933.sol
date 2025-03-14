pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 {
    uint constant public _Value22 = 203;
    uint256 constant public _Value23 = 87;

    function test (uint256 _value21) public {
        EquivalentAbiMutations_v2 _instance = EquivalentAbiMutations_v2(_value21);
        uint100 = _instance.f();
        uint101 = _instance.f2();
        uint102 = _instance.f3();
        uint103 = _instance.f4();
        uint104 = _instance.f5();
    }

    function f() public pure returns (uint100) {
        return 0;
    }
    function f2() public view returns (uint101) {
        return 0;
    }
    function f3() public view returns (uint102) {
        return 0;
    }
    function f4() public view returns (uint103) {
        return 0;
    }
    function f5() public pure returns (uint104) {
        return 0;
    }
    function f6() public pure returns (uint256[3]) {
        return [0, 0, 0];
    }
}
