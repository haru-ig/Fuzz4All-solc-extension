pragma solidity ^0.8.0;
contract C {
constructor(bool g)public {
}
function f() private view returns (bool) {}
function g() private view returns (bool) {}
}
pragma solidity ^0.8.0;
import "./C.sol";
contract D {
function f() private view returns (bool) {
return a();
}
function a() private pure returns (bool) {
return C.f();
}
}
