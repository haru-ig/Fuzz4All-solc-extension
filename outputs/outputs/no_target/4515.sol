pragma solidity ^0.8.0;
contract C {
    uint256 private v = 839;
    uint256 _v=156;
    uint256 constant z=107;
    function myFunction(uint256 n) public {
        uint256 m = v + n - z;
        emit(n);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256 private v;
    uint256 _v=9;
    uint256 constant z=9;
    function myFunction(uint256 n) public {
        uint256 m = v + n - z;
        emit(m);
    }
}

pragma solidity ^0.8.0;
library A {
    function function_hash() public pure returns (uint256);
}
pragma solidity ^0.8.0;
contract C {
    uint public constant a=1030;
    uint256 _a=1050;
    uint256 constant z=1070;
    using A for uint40;
    function myFunction() public view returns (uint256) {
        uint256 m = a + z - _a;
        emit(a);
        return m;
    }
