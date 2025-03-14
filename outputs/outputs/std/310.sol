pragma solidity ^0.8.0;
contract Test {
    uint8 private _a;
}
pragma solidity ^0.8.0;
contract Test {
    uint8 constant _a = 255;
}
pragma solidity ^0.8.0;
contract Test {
    uint8 constant _a = 255;
    uint256 _b;
}
pragma solidity ^0.8.0;
contract Test {
    uint256 constant _a = 255;
    uint256 constant _b = _a;
    uint8 _c = _a;
}
pragma solidity ^0.8.0;
contract A49 {
    uint256 internal constant a = 0x0f;
}
pragma solidity ^0.8.0;
contract A6 {
    function doNothing() public pure {}
    function doNothing2() public pure {}
}
pragma solidity ^0.8.0;
contract A46 {
    function doNothing() public pure {}
}
struct A7 {
uint128 a;
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract A40 {
address[] public b;
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract A76 {
    mapping(address => bool) internal c;
    uint[] internal d1;
    mapping(uint256 => uint256) internal e1;
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract A25 {
    uint8 internal constant f = 254;
    uint8 internal constant g = 253;
}
pragma solidity ^0.8.0;
contract A23 {
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract A49 {
A23 internal constant a = A23(true);
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract IA87 {
    address public a;
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract IA0 {
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract IAE2 {
IA0 internal constant a = IA0(true);
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract IAE2 {
IA0 internal constant a = IA0(true);
IA0 internal constant b = IA0(true);
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract IAE2 {
IA87 internal constant a = IA87(IA87(IA87(IA87(IA87(true)))));
    function doNothing() public pure {}
}
pragma solidity ^0.8.0;
contract IAE2 {
IA87 internal constant a = IA87(IA87(IA87(IA87(IA87(true)))));
IA0 internal constant b = IA0(true);
