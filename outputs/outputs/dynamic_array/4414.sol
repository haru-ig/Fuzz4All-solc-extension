pragma solidity ^0.8.0;
contract Mutated { function test() public returns (uint256[] memory) {
    uint256[] memory x = new uint256[](8);
    x[0] = 42; x[1] = 43; x[2] = 44;
    for (uint256 i=0; i < 4; i++) { x[i] = x[i] + x[i+1]; }
    return x;
    }
    event logEvent(uint256[] memory x);
    function f() public returns (uint256[] memory) {
    uint256[] memory x = new uint256[](8);
    x[0] = 42; x[1] = 43; x[2] = 44;
    for (uint256 i=0; i < 4; i++) { x[i] = x[i] + x[i+1]; }
    logEvent(x);
    for (uint256 i=0; i < 4; i++) { x[i] = x[i] + x[i+1]; }
    return x;
    } }

pragma solidity ^0.8.0;
contract Mutated { uint256 x; function test() public {
    uint256[] memory y = new uint256[](1);
    x = x + y[99]; y = y + x; } }
contract C { function f(uint256 _y) public {} static modifier m2(uint256 _y) static pure { if (_y == 0) throw; } static modifier m1(uint256 _y) { if (_y!= 7) throw; } }

pragma solidity ^0.8
